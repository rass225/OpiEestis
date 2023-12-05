import SwiftUI
import FirebaseFirestore

extension CollegeDevelopment.LocalMajorView {
    class Model: ObservableObject {
        let major: Major
        let remoteMajor: NewMajor?
        let college: College
        let modelX: CollegeMajorView.Model
        private let dependencies: DependencyManager
        
        init(
            college: College,
            major: Major,
            remoteMajor: NewMajor?
        ) {
            self.college = college
            self.major = major
            self.remoteMajor = remoteMajor
            self.modelX = .init(major: major, college: college)
            
            self.dependencies = .shared
        }
        func addMajorToSchool() {
            guard remoteMajor == nil else { return }
            let db = Firestore.firestore()
            var newMajor = NewMajor(
                id: "majorID",
                collegeId: college.id,
                name: modelX.major.name,
                nameEn: modelX.major.nameEn,
                level: modelX.major.level,
                language: modelX.major.language, 
                languages: modelX.major.languages,
                majorWebsite: modelX.major.majorWebsite,
                description: modelX.major.description,
                descriptionEn: modelX.major.descriptionEn,
                spots: modelX.major.spots,
                duration: modelX.major.duration,
                studyLocation: modelX.major.studyLocation,
                eap: modelX.major.eap,
                ekap: modelX.major.ekap,
                cost: modelX.major.cost,
                curriculumRef: modelX.major.curriculumRef,
                isEnglishOnly: modelX.major.isEnglishOnly,
                curriculumDate: modelX.major.curriculumDate,
                studyType: modelX.major.studyType,
                studyTypes: modelX.major.studyTypes,
                videoId: modelX.major.videoId,
                vimeoId: modelX.major.vimeoId,
                spotifyPath: modelX.major.spotifyPath,
                facebookWatchId: modelX.major.facebookWatchId
            )
            
            // Add the newMajor to the School's collection
            let schoolRef = db.collection("Schools").document(college.id)
            let majorsCollectionRef = schoolRef.collection("majors")
            
            var newMajorRef: DocumentReference? = nil
            do {
                newMajorRef = try majorsCollectionRef.addDocument(from: newMajor)
            } catch {
                print("Error adding newMajor to Firestore: \(error)")
                return
            }
            
            // Update the placeholder ID with the real document ID
            if let realID = newMajorRef?.documentID {
                newMajor.id = realID
                newMajorRef?.setData(try! Firestore.Encoder().encode(newMajor), merge: true)
            }
            
            // Add subcollections for requirements, modules, outcomes, and personnel
            if let newMajorID = newMajorRef?.documentID {
                // Add subcollection for Requirements
                let requirementsCollectionRef = newMajorRef?.collection("requirements")
                for requirement in major.requirements {
                    do {
                        try requirementsCollectionRef?.addDocument(from: requirement)
                    } catch {
                        print("Error adding requirement to Firestore: \(error)")
                    }
                }
                
                // Add subcollection for Modules
                if let modules = major.modules {
                    let modulesCollectionRef = newMajorRef?.collection("modules")
                    for module in modules {
                        do {
                            try modulesCollectionRef?.addDocument(from: module)
                        } catch {
                            print("Error adding module to Firestore: \(error)")
                        }
                    }
                }
                
                // Add subcollection for Outcomes
                if let outcomes = major.outcomes {
                    let outcomesCollectionRef = newMajorRef?.collection("outcomes")
                    for outcome in outcomes {
                        let newOutcome: NewOutcome = .init(description: outcome)
                        do {
                            try outcomesCollectionRef?.addDocument(from: newOutcome)
                        } catch {
                            print("Error adding outcome to Firestore: \(error)")
                        }
                    }
                }
                
                // Add subcollection for Personnel
                if let personnel = major.personnel {
                    let personnelCollectionRef = newMajorRef?.collection("personnel")
                    for person in personnel {
                        do {
                            try personnelCollectionRef?.addDocument(from: person)
                        } catch {
                            print("Error adding personnel to Firestore: \(error)")
                        }
                    }
                }
                
                print("Added newMajor with ID: \(newMajorID) to Firestore")
            }
        }
        
        func overrideMajor(majorID: String) async {
            var newMajor = NewMajor(
                id: majorID,
                collegeId: college.id,
                name: modelX.major.name,
                nameEn: modelX.major.nameEn,
                level: modelX.major.level,
                language: modelX.major.language,
                languages: modelX.major.languages,
                majorWebsite: modelX.major.majorWebsite,
                description: modelX.major.description,
                descriptionEn: modelX.major.descriptionEn,
                spots: modelX.major.spots,
                duration: modelX.major.duration,
                studyLocation: modelX.major.studyLocation,
                eap: modelX.major.eap,
                ekap: modelX.major.ekap,
                cost: modelX.major.cost,
                curriculumRef: modelX.major.curriculumRef,
                isEnglishOnly: modelX.major.isEnglishOnly,
                curriculumDate: modelX.major.curriculumDate,
                studyType: modelX.major.studyType,
                studyTypes: modelX.major.studyTypes,
                videoId: modelX.major.videoId,
                vimeoId: modelX.major.vimeoId,
                spotifyPath: modelX.major.spotifyPath,
                facebookWatchId: modelX.major.facebookWatchId
            )
            let db = Firestore.firestore()

            let schoolRef = db.collection("Schools").document(college.id)
            let majorRef = schoolRef.collection("majors").document(majorID)

            // Create a Dispatch Group to track the completion of all operations
            let dispatchGroup = DispatchGroup()

            // Update the major's main document
            dispatchGroup.enter()
            let newMajorData = try! Firestore.Encoder().encode(newMajor)
            majorRef.setData(newMajorData, merge: true) { error in
                if let error = error {
                    print("Error updating major in Firestore: \(error)")
                }
                dispatchGroup.leave()
            }

            // Update subcollections
            updateSubcollection(parentRef: majorRef, collectionName: "requirements", with: major.requirements, dispatchGroup: dispatchGroup)
            if let modules = major.modules {
                updateSubcollection(parentRef: majorRef, collectionName: "modules", with: modules, dispatchGroup: dispatchGroup)
            }
            if let outcomes = major.outcomes {
                updateOutcomes(parentRef: majorRef, with: outcomes, dispatchGroup: dispatchGroup)
            }
            if let personnel = major.personnel {
                updateSubcollection(parentRef: majorRef, collectionName: "personnel", with: personnel, dispatchGroup: dispatchGroup)
            }

            // Wait for all operations to complete
            await withCheckedContinuation { continuation in
                dispatchGroup.notify(queue: .main) {
                    print("Updated major \(self.modelX.major.name) with ID: \(majorID)")
                    continuation.resume()
                }
            }
        }
        
        private func updateSubcollection<T: Encodable>(parentRef: DocumentReference, collectionName: String, with data: [T], dispatchGroup: DispatchGroup) {
            let collectionRef = parentRef.collection(collectionName)
            collectionRef.getDocuments { (querySnapshot, err) in
                if let err = err {
                    print("Error getting documents: \(err)")
                    return
                } else {
                    for document in querySnapshot!.documents {
                        document.reference.delete()
                    }
                    data.forEach { item in
                        dispatchGroup.enter()
                        do {
                            try collectionRef.addDocument(from: item) { error in
                                if let error = error {
                                    print("Error adding item to Firestore: \(error)")
                                }
                                dispatchGroup.leave()
                            }
                        } catch {
                            print("Error adding item to Firestore: \(error)")
                            dispatchGroup.leave()
                        }
                    }
                }
            }
        }

        private func updateOutcomes(parentRef: DocumentReference, with outcomes: [String], dispatchGroup: DispatchGroup) {
            let collectionRef = parentRef.collection("outcomes")
            collectionRef.getDocuments { (querySnapshot, err) in
                if let err = err {
                    print("Error getting documents: \(err)")
                    return
                } else {
                    for document in querySnapshot!.documents {
                        document.reference.delete()
                    }
                    outcomes.forEach { outcomeDescription in
                        dispatchGroup.enter()
                        let newOutcome = NewOutcome(description: outcomeDescription)
                        do {
                            try collectionRef.addDocument(from: newOutcome) { error in
                                if let error = error {
                                    print("Error adding outcome to Firestore: \(error)")
                                }
                                dispatchGroup.leave()
                            }
                        } catch {
                            print("Error adding outcome to Firestore: \(error)")
                            dispatchGroup.leave()
                        }
                    }
                }
            }
        }
    }
}
