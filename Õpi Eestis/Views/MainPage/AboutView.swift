import SwiftUI

struct AboutView: View {
    var aboutText = ["Õpi Eestis on ainulaadne mobiilirakendus, mis pakub sulle võimalust leida omale sobiv teekond õpingute jätkamiseks. Kunagi varem pole protsess nii lihtne olnud. Tutvu erinevate Eesti ülikoolidega ning tee oma valik väljatoodud erialade seast. Soovid õppida ärindust, kunstiteadusi, kirjandust või hoopis midagi muud? Valik on sinu!", "Rakenduse eesmärk on laiendada eestimaalaste teadlikkust Eestis pakutavate õppimisvõimaluste kohta ja lihtsustada informatsiooni kättesaadavust. Rakendus Õpi Eestis loob eeldused edendada haridust ning aidata inimestel oma unistused täita. Informatsioon on kogutud kokku nii kõrgkoolide ametlikelt kodulehekülgedelt kui ka teistest teabeallikatest.", "Erialade kohta käiv teave pärineb 2020/2021 õppeaastast.", "Designed and developed by Rasmus Tauts.", "Copyright © 2019 Rasmus Tauts. All rights reserved."]
   
    let fontColor = Color.black.opacity(1)
    let navTitle = Text("Rakendusest")
    var body: some View {
        ZStack{
            Color.customBlue.edgesIgnoringSafeArea(.all)
            VStack{
                ScrollView{
                    ForEach(aboutText, id: \.self) { item in
                        Text(item)
                            .padding(20)
                            .lineSpacing(9)
                            .multilineTextAlignment(.leading)
                            .frame(maxHeight: .infinity)
                    }.font(.system(size: UIScreen.main.bounds.width / 28, weight: .light))
                }
            }
            .background(Color.black.opacity(0.5))
            .foregroundColor(Color.white)
            .edgesIgnoringSafeArea(.bottom)
            .navigationBarTitle(navTitle, displayMode: .inline)
        }
    }
}

extension AboutView {
    func customNavBarHeight() -> CGFloat {
        var customHeight: CGFloat = 0
        let screenHeight = UIScreen.main.bounds.height
        if screenHeight > 690 {
            customHeight = CGFloat(100)
        } else {
            customHeight = CGFloat(76)
        }
        return customHeight
    }
}
