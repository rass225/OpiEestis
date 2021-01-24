import SwiftUI
import UIKit
import MessageUI

struct Menu: View {
    @Binding var contact: School
    @State var result: Result<MFMailComposeResult, Error>? = nil
    @State var isShowingMailView = false
    @State private var showingAlert = false
    @State private var copytext = "Kopeeritud"
    
    var body: some View {
        ZStack{
            VStack(alignment: .leading, spacing: 0){
                HStack(alignment: .center){
                    Button(action: {
                        isShowingMailView.toggle()
                    }) {
                        MajorButton(image: "envelope", label: contact.contact.email)
                            .frame(height: 70)
                            .background(Color.black.opacity(0.3))
                    }
                    .disabled(!MFMailComposeViewController.canSendMail())
                    .sheet(isPresented: $isShowingMailView) {MailView(result: $result, email: contact)}
                    .contextMenu(menuItems: {
                        Button(action: {
                            let pastedtext = UIPasteboard.general
                            pastedtext.string = contact.contact.email
                            showingAlert = true
                        }) {
                            Text("Kopeeri")
                        }
                    })
                                        
                    .alert(isPresented: $showingAlert) { Alert(title: Text(copytext)) }
                    
                }
                Divider()
                HStack(alignment: .center){
                    Button(action: {
                        let tel = "tel://"
                        let formattedString = tel + contact.contact.phonenumber
                        let url: NSURL = URL(string: formattedString)! as NSURL
                        UIApplication.shared.open(url as URL)
                    }) {
                        MajorButton(image: "phone", label: contact.contact.phonenumber)
                            .frame(height: 70)
                            .background(Color.black.opacity(0.3))
                    }
                    .contextMenu(menuItems: {
                        Button(action: {
                            let pastedtext = UIPasteboard.general
                            pastedtext.string = contact.contact.phonenumber
                            showingAlert = true
                        }) {
                            Text("Kopeeri")
                        }
                    })
                    .alert(isPresented: $showingAlert) { Alert(title: Text(copytext)) }
                    
                }
                Divider()
                HStack(alignment: .center){
                    Button(action: {
                        guard let url = URL(string: contact.location.coordinates as String) else { return }
                        UIApplication.shared.open(url)
                    }) {
                        MajorButton(image: "map", label: "\(contact.contact.address), \(contact.location.city)")
                            .frame(height: 70)
                            .background(Color.black.opacity(0.3))
                            
                    }
                    .contextMenu(menuItems: {
                        Button(action: {
                            let pastedtext = UIPasteboard.general
                            let formattedString = contact.contact.address + ", " + contact.location.city
                            pastedtext.string = formattedString
                        }) {
                            Text("Kopeeri")
                        }
                    })
                    .alert(isPresented: $showingAlert) { Alert(title: Text(copytext))}
                }
                Divider()
                
                HStack(alignment: .center){
                    Button(action: {
                        guard let url = URL(string: contact.website as String) else { return }
                        UIApplication.shared.open(url)
                    }) {
                        MajorButton(image: "house", label: "Koduleht")
                            .frame(height: 70)
                            .background(Color.black.opacity(0.3))
                    }
                }
                Divider()
            }
            .font(Font.callout.weight(.regular))
            .foregroundColor(Color.black)
        }.environment(\.colorScheme, .light)
    }
}

extension Menu {
    func headerSize() -> CGFloat {
        var customHeight: CGFloat = 0
        let screenHeight = UIScreen.main.bounds.height
        let screenWidth = UIScreen.main.bounds.width
        if screenHeight > 900 {
            customHeight = screenHeight / 70
        }
        else {
            customHeight = screenWidth / 30
        }
        return customHeight
    }
}
