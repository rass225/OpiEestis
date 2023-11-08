import SwiftUI
import FirebaseFirestore

struct CollegeDevelopment: View {
    @StateObject var model: Model
    
    var body: some View {
        VStack {
            HStack {
                Text("Local")
                    .setColor(.white)
                    .padding(.vertical, 12)
                    .maxWidth()
                    .background(Color.blue)
                    .clipShape(.rect(cornerRadius: 8, style: .continuous))
                    .onTapGesture {
                        model.listSelection = .local
                    }
                Text("Remote")
                    .setColor(.white)
                    .padding(.vertical, 12)
                    .maxWidth()
                    .background(Color.green)
                    .clipShape(.rect(cornerRadius: 8, style: .continuous))
                    .onTapGesture {
                        model.listSelection = .remote
                    }
            }
            .padding(.horizontal)
            switch model.listSelection {
            case .local:
                List {
                    ForEach(model.localMajors, id: \.self) { major in
                        localMajorCell(major)
                    }
                }
            case .remote:
                List {
                    ForEach(model.remoteMajors, id: \.self) { major in
                        remoteMajorCell(major)
                    }
                }
            }
        }
        .sheet(item: $model.localMajorSelection) { major in
            LocalMajorView(
                college: model.college,
                major: major,
                remoteMajor: model.remoteMajors.first(where: {
                    $0.name == major.name && 
                    $0.level == major.level &&
                    $0.language == major.language &&
                    $0.duration == major.duration
                })
            )
        }
        .sheet(item: $model.remoteMajorSelection) { major in
            MajorView(model: .init(major: major, college: model.college, user: .initial(id: "XXX", email: "Email"), isFavorite: false, appState: .init()))
        }
    }
    
    @ViewBuilder
    func localMajorCell(_ major: Major) -> some View {
        HStack(alignment: .center, spacing: 8) {
            VStack(alignment: .leading, spacing: 2) {
                Text(major.name)
                    .setFont(.callout, .medium, .rounded)
                    .setColor(Theme.Colors.black)
                VStack(alignment: .leading, spacing: 24) {
                    Text(major.level.rawValue.capitalized)
                        .setFont(.subheadline, .medium, .rounded)
                        .setColor(model.college.palette.base)
                    
                    HStack(spacing: 8) {
                        Text(major.language.secondaryLabel)
                        Text("•")
                        Text(major.durationLabel)
                        Text("•")
                        Text(major.costLabel)
                    }
                    .setColor(.gray)
                    .setFont(.footnote, .medium, .rounded)
                    
                }
            }
            .padding(.vertical, 4)
            Spacer()
        }
        .badge(
            Text(model.remoteMajors.contains(where: {
                $0.name == major.name &&
                $0.level == major.level &&
                $0.language == major.language &&
                $0.duration == major.duration
            }) ? "Synced" : "Not synced")
                .setFont(.footnote, .regular, .rounded)
        )
        .contentShape(.rect)
        .onTapGesture {
            model.localMajorSelection = major
        }
    }
    
    @ViewBuilder
    func remoteMajorCell(_ major: NewMajor) -> some View {
        HStack(alignment: .center, spacing: 8) {
            VStack(alignment: .leading, spacing: 2) {
                Text(major.name)
                    .setFont(.callout, .medium, .rounded)
                    .setColor(Theme.Colors.black)
                VStack(alignment: .leading, spacing: 24) {
                    Text(major.level.rawValue.capitalized)
                        .setFont(.subheadline, .medium, .rounded)
                        .setColor(model.college.palette.base)
                    HStack(spacing: 8) {
                        Text(major.language.secondaryLabel)
                        Text("•")
                        Text(major.durationLabel)
                        Text("•")
                        Text(major.costLabel)
                    }
                    .setColor(.gray)
                    .setFont(.footnote, .medium, .rounded)
                }
            }
            .padding(.vertical, 4)
            Spacer()
        }
        .contentShape(.rect)
        .onTapGesture {
            model.remoteMajorSelection = major
        }
    }
}

extension CollegeDevelopment {
    struct LocalMajorView: View {
        let major: Major
        let remoteMajor: NewMajor?
        let college: College
        let model: CollegeMajorView.Model
        private let dependencies: DependencyManager
        
        init(
            college: College,
            major: Major,
            remoteMajor: NewMajor?
        ) {
            self.college = college
            self.major = major
            self.remoteMajor = remoteMajor
            self.model = .init(major: major, college: college)
            
            self.dependencies = .shared
        }
        
        var body: some View {
            CollegeMajorView(model: model)
                .overlay(alignment: .bottom) {
                    HStack {
                        Button(action: {
                            guard remoteMajor == nil else { return }
                            addMajorToSchool(major: model.major, schoolID: college.id)
                        }, label: {
                            Text(remoteMajor == nil ? "Add to database" : "Already in database")
                                .padding()
                                .background(remoteMajor == nil ? Color.blue : Color.red)
                                .setColor(.white)
                                .clipShape(.rect(cornerRadius: 8, style: .continuous))
                        })
                        if let remoteMajor {
                            Button(action: {
                                overrideMajor(major: model.major, schoolID: college.id, majorID: remoteMajor.id)
                            }, label: {
                                Text("Override")
                                    .padding()
                                    .background(Color.green)
                                    .setColor(.white)
                                    .clipShape(.rect(cornerRadius: 8, style: .continuous))
                            })
                        }
                    }
                }
        }
        
        func addMajorToSchool(major: Major, schoolID: String) {
            let db = Firestore.firestore()
            var newMajor = NewMajor(
                id: "placeholder", 
                collegeId: college.id,
                name: major.name,
                level: major.level,
                language: major.language,
                majorWebsite: major.majorWebsite, 
                description: major.description,
                spots: major.spots,
                duration: major.duration,
                studyLocation: major.studyLocation,
                eap: major.eap,
                ekap: major.ekap,
                cost: major.cost,
                curriculumRef: major.curriculumRef,
                isEnglishOnly: major.isEnglishOnly,
                curriculumDate: major.curriculumDate,
                studyType: major.studyType,
                videoId: major.videoId,
                vimeoId: major.vimeoId,
                spotifyPath: major.spotifyPath,
                facebookWatchId: major.facebookWatchId
            )
            
            // Add the newMajor to the School's collection
            let schoolRef = db.collection("Schools").document(schoolID)
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
        
//        func overrideMajor(major: Major, schoolID: String, majorID: String) {
//            let db = Firestore.firestore()
//            
//            let schoolRef = db.collection("Schools").document(schoolID)
//            let majorRef = schoolRef.collection("majors").document(majorID)
//            
//            // Delete the major's main document
//            majorRef.delete { error in
//                if let error = error {
//                    print("Error deleting major from Firestore: \(error)")
//                } else {
//                    // After successfully deleting, add the major again using the previous function
//                    DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
//                        self.addMajorToSchool(major: major, schoolID: schoolID)
//                    }
//                }
//            }
//        }
    }
}

extension CollegeDevelopment.LocalMajorView {
    // ... existing code ...

    func overrideMajor(major: Major, schoolID: String, majorID: String) {
        var newMajor = NewMajor(
            id: majorID,
            collegeId: college.id,
            name: major.name,
            level: major.level,
            language: major.language,
            majorWebsite: major.majorWebsite,
            description: major.description,
            spots: major.spots,
            duration: major.duration,
            studyLocation: major.studyLocation,
            eap: major.eap,
            ekap: major.ekap,
            cost: major.cost,
            curriculumRef: major.curriculumRef,
            isEnglishOnly: major.isEnglishOnly,
            curriculumDate: major.curriculumDate,
            studyType: major.studyType,
            videoId: major.videoId,
            vimeoId: major.vimeoId,
            spotifyPath: major.spotifyPath,
            facebookWatchId: major.facebookWatchId
        )
        let db = Firestore.firestore()

        let schoolRef = db.collection("Schools").document(schoolID)
        let majorRef = schoolRef.collection("majors").document(majorID)

        // Update the major's main document
        let newMajorData = try! Firestore.Encoder().encode(newMajor)
        majorRef.setData(newMajorData, merge: true) { error in
            if let error = error {
                print("Error updating major in Firestore: \(error)")
                return
            }

            // Update subcollections for requirements, modules, outcomes, and personnel
            updateSubcollection(parentRef: majorRef, collectionName: "requirements", with: major.requirements)
            if let modules = major.modules {
                updateSubcollection(parentRef: majorRef, collectionName: "modules", with: modules)
            }
            if let outcomes = major.outcomes {
                updateOutcomes(parentRef: majorRef, with: outcomes)
            }
            if let personnel = major.personnel {
                updateSubcollection(parentRef: majorRef, collectionName: "personnel", with: personnel)
            }

            print("Updated major with ID: \(majorID) in Firestore")
        }
    }

    private func updateSubcollection<T: Encodable>(parentRef: DocumentReference, collectionName: String, with data: [T]) {
        let collectionRef = parentRef.collection(collectionName)
        collectionRef.getDocuments { (querySnapshot, err) in
            if let err = err {
                print("Error getting documents: \(err)")
            } else {
                for document in querySnapshot!.documents {
                    document.reference.delete()
                }
                data.forEach { item in
                    do {
                        try collectionRef.addDocument(from: item)
                    } catch {
                        print("Error adding item to Firestore: \(error)")
                    }
                }
            }
        }
    }

    private func updateOutcomes(parentRef: DocumentReference, with outcomes: [String]) {
        let collectionRef = parentRef.collection("outcomes")
        collectionRef.getDocuments { (querySnapshot, err) in
            if let err = err {
                print("Error getting documents: \(err)")
            } else {
                for document in querySnapshot!.documents {
                    document.reference.delete()
                }
                outcomes.forEach { outcomeDescription in
                    let newOutcome = NewOutcome(description: outcomeDescription)
                    do {
                        try collectionRef.addDocument(from: newOutcome)
                    } catch {
                        print("Error adding outcome to Firestore: \(error)")
                    }
                }
            }
        }
    }
}
