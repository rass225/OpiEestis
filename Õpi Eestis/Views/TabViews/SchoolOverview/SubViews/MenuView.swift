import SwiftUI
import UIKit
import MessageUI

struct Menu: View {
    let contact: ContactInfo
    let location: Location
    let website: String
    let name: String
    @State var result: Result<MFMailComposeResult, Error>? = nil
    @State var isShowingMailView = false
    @State private var showingAlert = false
    
    var body: some View {
        ZStack{
            HStack(alignment: .center, spacing: 0){
                Spacer()
                drawMenuItem(
                    image: .envelope,
                    action: {isShowingMailView.toggle()},
                    contextAction: { copy(string: contact.email) }
                )
                drawMenuItem(
                    image: .phone,
                    action: { phoneAction() },
                    contextAction: { copy(string: contact.phonenumber) })
                drawMenuItem(
                    image: .map,
                    action: { mapsAction() },
                    contextAction: {copy(string: contact.address + ", " + location.city)}
                )
                drawMenuItem(
                    image: .house,
                    action: { websiteAction() },
                    contextAction: { copy(string: website) }
                )
                Spacer()
            }.padding(.vertical)
            .alert(isPresented: $showingAlert) { Alert(title: Text.copied) }
        }.disabled(!MFMailComposeViewController.canSendMail())
        .sheet(isPresented: $isShowingMailView) {MailView(result: $result, email: contact, name: name)}
    }
    
    @ViewBuilder private func drawMenuItem(image: String, action: @escaping () -> Void, contextAction: @escaping () -> Void) -> some View {
        Button(action: action) {
            ZStack{
                HStack{
                    VStack{
                        Image(systemName: image)
                    }
                    .frame(width: 35)
                    .font(.lightTitle)
                }
            }.foregroundColor(Color.black)
            .padding(.horizontal, 20)
        }.contextMenu(menuItems: {
            Button(action:  contextAction) {
                Text.copy
            }
        })
        
    }
}

extension Menu {
    
    func websiteAction() {
        guard let url = URL(string: website) else { return }
        UIApplication.shared.open(url)
    }
    
    func mapsAction() {
        guard let url = URL(string: location.coordinates) else { return }
        UIApplication.shared.open(url)
    }
    
    func copy(string: String) {
        let pastedtext = UIPasteboard.general
        pastedtext.string = string
        showingAlert = true
    }
    
    func phoneAction() {
        let tel = "tel://"
        let formattedString = tel + contact.phonenumber
        let url: NSURL = URL(string: formattedString)! as NSURL
        UIApplication.shared.open(url as URL)
    }
}
