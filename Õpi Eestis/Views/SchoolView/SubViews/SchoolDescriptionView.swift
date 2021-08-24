import SwiftUI
import UIKit
import MessageUI

struct SchoolDescriptionView: View {
    @EnvironmentObject var theme: Theme
    
    let school: School
    @Binding var education: [majorsMinors]
    
    
    
    var body: some View {
        ZStack{
            VStack{
                SchoolLogo(image: school.logo.rawValue)
                SchoolStatistics(school: school, color: theme.colorTheme, education: $education)
                MenuItems(color: theme.colorTheme, school: school)
            }.padding(.vertical, 10)
            .background(Color.white)
            .cornerRadiusCustom(50, corners: [.bottomLeft, .bottomRight])
            .miniShadow()
        }
    }
}

private struct MenuItems: View {
    
    let color: Color
    let school: School
    @State var result: Result<MFMailComposeResult, Error>? = nil
    @State var isShowingMailView = false
    @State private var showingAlert = false
    
    var body : some View {
        HStack(spacing: 20){
            Spacer()
            HStack(alignment: .center, spacing: 20){
                
                Group{
                    Button(action: {isShowingMailView.toggle()}) {
                        drawMenuItem(image: .envelopeFill, primaryColor: color, secondaryColor: .white)
                    }
                    .contextMenu(menuItems: {
                        Button(action: { copy(string: school.contact.email)}) { Text.copy }
                    })
                }
                Group{
                    Button(action: { phoneAction() }) {
                        drawMenuItem(image: .phoneFill, primaryColor: color, secondaryColor: .white)
                    }
                    .contextMenu(menuItems: {
                        Button(action: { copy(string: school.contact.phonenumber)}) { Text.copy }
                    })
                }
                Group{
                    Button(action: { mapsAction() }) {
                        drawMenuItem(image: .locationFill, primaryColor: color, secondaryColor: .white)
                    }
                    .contextMenu(menuItems: {
                        Button(action: { copy(string: school.contact.address + ", " + school.location.city.rawValue)}) {
                            Text.copy
                        }
                    })
                }
                Group{
                    Button(action: { websiteAction() }) {
                        drawMenuItem(image: .houseFill, primaryColor: color, secondaryColor: .white)
                    }
                    .contextMenu(menuItems: {
                        Button(action: { copy(string: school.website) }) { Text.copy }
                    })
                }
            }
            .alert(isPresented: $showingAlert) { Alert(title: Text.copied) }
            .disabled(!MFMailComposeViewController.canSendMail())
            .sheet(isPresented: $isShowingMailView) {MailView(result: $result, email: school.contact, name: school.name.rawValue)}
            NavigationLink(
                destination: SchoolAboutView(school: school),
                label: {
                    drawMenuItem(image: .info, primaryColor: color, secondaryColor: .white)
                }
            )
            Spacer()
        }.padding(.vertical)
    }
    func websiteAction() {
        guard let url = URL(string: school.website) else { return }
        UIApplication.shared.open(url)
    }
    
    func mapsAction() {
        guard let url = URL(string: school.location.coordinates.rawValue) else { return }
        UIApplication.shared.open(url)
    }
    
    func copy(string: String) {
        let pastedtext = UIPasteboard.general
        pastedtext.string = string
        showingAlert = true
    }
    
    func phoneAction() {
        let formattedString = Locale.network.telHttps + school.contact.phonenumber
        let url: NSURL = URL(string: formattedString)! as NSURL
        UIApplication.shared.open(url as URL)
    }
}
private struct SchoolStatistic: View {
    let image: Image
    let color: Color
    let topText: String
    let bottomText: String
    var body: some View {
        HStack(alignment: .center, spacing: 5){
            MajorStatImage(image: image)
            VStack(alignment: .leading, spacing: 0){
                Text(topText)
                    .font(.boldTitle3)
                    .foregroundColor(.black)
                Text(bottomText)
                    .padding(.top, -3)
                    .foregroundColor(.halfBlack)
                    .font(.regularCaption)
            }
        }
    }
}
private struct SchoolLogo: View {
    let image: String
    var body : some View {
        Image(image)
            .resizable()
            .scaledToFit()
            .frame(height: Size.fifthWidth)
            .frame(maxWidth: Size.fifthWidth)
            .padding(.horizontal, 20)
    }
}
private struct SchoolStatistics: View {
    
    let school: School
    let color: Color
    @State var foreignStudentsToggle = false
    @Binding var education: [majorsMinors]
    
    var body : some View {
        HStack(alignment: .center, spacing: 0){
            Spacer()
            SchoolStatistic(image: .person2Fill, color: color, topText: makeStudentsTop(), bottomText: makeStudentBottom())
            Spacer()
            SchoolStatistic(image: .personFill, color: color, topText: makeForeignStudentTop(), bottomText: makeForeignStudentBottom())
                .animation(.default).onTapGesture { foreignStudentsToggle.toggle() }
            Spacer()
            SchoolStatistic(image: .mappinCircleFill, color: color, topText: makeLocationTop(), bottomText: makeLocationBottom())
            Spacer()
        }.padding(.vertical, 10)
        NavigationLink(destination: Text("fix")) {} //Annomaly, without it, schoolAboutView causes strange behavior
    }
    
    func makeLocationTop() -> String {
        return "\(getLocationCount())"
    }
    
    func makeLocationBottom() -> String {
        return Locale.cities
    }
    
    func makeForeignStudentTop() -> String {
        switch school.name {
        case .ebs:
            return foreignStudentsToggle ? "\(foreignStudents())%": Locale.ebsForeignStudents
        default:
            return foreignStudentsToggle ? "\(foreignStudents())%": "\(school.internationalStudents)"
        }
    }
    
    func makeForeignStudentBottom() -> String {
        return foreignStudentsToggle ? Locale.foreignStudents2 : Locale.foreignStudents1
    }
    
    func makeStudentsTop() -> String {
        return school.students != 0 ? "\(school.students)" : Locale.none
    }
    
    func makeStudentBottom() -> String {
        return Locale.students
    }
    
    
    func getLocationCount() -> Int {
        let studyLocations = education.map{ ($0.studyLocation) }
        var differentStudyLocations: [String] = []
        for major in studyLocations {
            for item in major {
                differentStudyLocations.append(item.rawValue)
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
}
