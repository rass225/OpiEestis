import SwiftUI
import UIKit
import MessageUI

struct SchoolDescriptionView: View {
    @EnvironmentObject var theme: Theme
    let school: School
    @State var foreignStudentsToggle = false
    @ObservedObject var presenter = SchoolViewPresenter()
    @State var result: Result<MFMailComposeResult, Error>? = nil
    @State var isShowingMailView = false
    @State private var showingAlert = false
    
    var body: some View {
        ZStack{
            VStack{
                LabelledDivider(label: school.logo).padding(.horizontal, 20)
                HStack(spacing: 10){
                    VStack{
                        Text(school.students != 0 ? "\(school.students)" : "N/A").font(.boldCallout)
                        HStack(alignment: .center, spacing: 5){
                            StatImage(image: .person3)
                            Text("Üliõpilast")
                        }
                    }.modifier(statCellModifier())
                    
                    VStack{
                        Text(school.name.rawValue.contains("Business")
                                ? foreignStudentsToggle ? "\(foreignStudents())%": "42. riigist"
                                : foreignStudentsToggle ? "\(foreignStudents())%": "\(school.internationalStudents)"
                        ).font(.boldCallout)
                        HStack(alignment: .center, spacing: 5){
                            StatImage(image: .person2)
                            Text(foreignStudentsToggle ? "Välisüliõpilasi" : "Välisüliõpilast")
                                .animation(.default)
                        }
                    }.modifier(statCellModifier())
                    .onTapGesture { foreignStudentsToggle.toggle() }
                    
                    VStack{
                        Text("\(locationCount())").font(.boldCallout)
                        HStack(alignment: .center, spacing: 5){
                            StatImage(image: .mappinCircle)
                            Text("Linnas")
                        }
                    }.modifier(statCellModifier())
                }
                
                HStack(alignment: .center, spacing: 20){
                    Spacer()
                    Button(action: {isShowingMailView.toggle()}) {
                        drawMenuItem(image: .envelope)
//                        Text("s")
                    }
                    .contextMenu(menuItems: {
                        Button(action: { copy(string: school.contact.email)}) {
                            Text.copy
                        }
                    })
                    Button(action: {
                        phoneAction()
                    }) {
                        drawMenuItem(image: .phone)
//                        Text("s")
                    }
                    .contextMenu(menuItems: {
                        Button(action: { copy(string: school.contact.phonenumber)}) {
                            Text.copy
                        }
                    })
                    Button(action: {
                        mapsAction()
                    }) {
                        drawMenuItem(image: .map)
//                        Text("s")
                    }
                    .contextMenu(menuItems: {
                        Button(action: { copy(string: school.contact.address + ", " + school.location.city)}) {
                            Text.copy
                        }
                    })
                    Button(action: {
                        websiteAction()
                    }) {
                        drawMenuItem(image: .house)
//                        Text("s")
                    }
                    .contextMenu(menuItems: {
                        Button(action: { copy(string: school.website) }) {
                            Text.copy
                        }
                    })
                    NavigationLink(
                        destination: SchoolAboutView(school: school),
                        label: {
                            drawMenuItem(image: .info)
                        }
                    )
                    Spacer()
                }.padding(.vertical)
                .alert(isPresented: $showingAlert) { Alert(title: Text.copied) }
                .disabled(!MFMailComposeViewController.canSendMail())
                .sheet(isPresented: $isShowingMailView) {MailView(result: $result, email: school.contact, name: school.name.rawValue)}
                
            }.padding(.top, 20)
            .background(Color.white)
            .cornerRadiusCustom(50, corners: [.bottomLeft, .bottomRight])
            .shadow(color: Color.black.opacity(0.05), radius: 1, x: 0, y: 2)
        }
    }
}

extension SchoolDescriptionView {
    
    func locationCount() -> Int {
        let majors = school.education
        let studyLocations = majors.map{ ($0.studyLocation) }
        var differentStudyLocations: [String] = []
        for major in studyLocations {
            for item in major {
                differentStudyLocations.append(item)
            }
        }
        var count: [String: Int] = [:]
        differentStudyLocations.forEach { count[$0, default: 0] += 1 }
        return count.count
    }
    
    func foreignStudents() -> Int {
        if school.students != 0 {
            return school.internationalStudents * 100 / school.students
        } else {
            return 0
        }
    }
    
    func websiteAction() {
        guard let url = URL(string: school.website) else { return }
        UIApplication.shared.open(url)
    }
    
    func mapsAction() {
        guard let url = URL(string: school.location.coordinates) else { return }
        UIApplication.shared.open(url)
    }
    
    func copy(string: String) {
        let pastedtext = UIPasteboard.general
        pastedtext.string = string
        showingAlert = true
    }
    
    func phoneAction() {
        let tel = "tel://"
        let formattedString = tel + school.contact.phonenumber
        let url: NSURL = URL(string: formattedString)! as NSURL
        UIApplication.shared.open(url as URL)
    }
}
