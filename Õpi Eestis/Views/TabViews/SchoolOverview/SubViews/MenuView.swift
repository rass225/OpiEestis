import SwiftUI
import UIKit
import MessageUI

struct Menu: View {
    let contact: School
    @State var result: Result<MFMailComposeResult, Error>? = nil
    @State var isShowingMailView = false
    @State private var showingAlert = false
    
    var body: some View {
        ZStack{
            HStack(alignment: .center, spacing: 0){
                Spacer()
                HStack(alignment: .center){
                    Button(action: { isShowingMailView.toggle() }) {
                        ContactButton(image: .envelope, label: contact.contact.email)
                    }
                    .disabled(!MFMailComposeViewController.canSendMail())
                    .sheet(isPresented: $isShowingMailView) {MailView(result: $result, email: contact)}
                    .contextMenu(menuItems: {
                        Button(action: {
                            let pastedtext = UIPasteboard.general
                            pastedtext.string = contact.contact.email
                            showingAlert = true
                        }) {
                            Text.copy
                        }
                    }).alert(isPresented: $showingAlert) { Alert(title: Text.copied) }
                }
                HStack(alignment: .center){
                    Button(action: {
                        let tel = "tel://"
                        let formattedString = tel + contact.contact.phonenumber
                        let url: NSURL = URL(string: formattedString)! as NSURL
                        UIApplication.shared.open(url as URL)
                    }) {
                        ContactButton(image: .phone, label: contact.contact.phonenumber)
                    }
                    .contextMenu(menuItems: {
                        Button(action: {
                            let pastedtext = UIPasteboard.general
                            pastedtext.string = contact.contact.phonenumber
                            showingAlert = true
                        }) {
                            Text.copy
                        }
                    })
                    .alert(isPresented: $showingAlert) { Alert(title: Text.copied) }
                }
                HStack(alignment: .center){
                    Button(action: {
                        guard let url = URL(string: contact.location.coordinates as String) else { return }
                        UIApplication.shared.open(url)
                    }) {
                        ContactButton(image: .map, label: "\(contact.contact.address), \(contact.location.city)")
                    }
                    .contextMenu(menuItems: {
                        Button(action: {
                            let pastedtext = UIPasteboard.general
                            let formattedString = contact.contact.address + ", " + contact.location.city
                            pastedtext.string = formattedString
                        }) {
                            Text.copy
                        }
                    })
                    .alert(isPresented: $showingAlert) { Alert(title: Text.copied)}
                }
                HStack(alignment: .center){
                    Button(action: {
                        guard let url = URL(string: contact.website as String) else { return }
                        UIApplication.shared.open(url)
                    }) {
                        ContactButton(image: .house, label: "Koduleht")
                    }
                }
                Spacer()
            }.padding(.vertical)
            .font(.regularCallout)
        }.environment(\.colorScheme, .light)
    }
}
