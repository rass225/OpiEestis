import Foundation
import SwiftUI
import MessageUI

struct SchoolContact: View {
    let school: School
    @State var isPopoverOpen = false
    @State var isShowingMailView = false
    @State var result: Result<MFMailComposeResult, Error>? = nil
    var body: some View {
        if #available(iOS 15.0, *) {
            Button(action: {
                isPopoverOpen.toggle()
            }) {
                HStack{
                    VStack(alignment: .leading, spacing: 0){
                        Header(type: .contact, school: school)
                        SubHeader(type: .contact)
                        Divider()
                    }
                    Spacer()
                    Chevron(type: .normal)
                }
                
                .padding(.horizontal, 25)
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            .confirmationDialog(Text(school.name.rawValue), isPresented: $isPopoverOpen, titleVisibility: .visible) {
                Button(action: {
                    school.phoneCall()
                }) {
                    Text("Helista")
                }
                Button(action: {
                    isShowingMailView.toggle()
                }) {
                    Text("Saada email")
                }
            }
            .disabled(!MFMailComposeViewController.canSendMail())
                .sheet(isPresented: $isShowingMailView) {MailView(result: $result, email: school.contact, name: school.name)}
//            .confirmationDialog
            
            
        } else {
            // Fallback on earlier versions
        }
        
    }
}
