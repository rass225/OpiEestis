import SwiftUI
import Combine

extension AboutView {
    class Model: ObservableObject {
        @Published var currentLocale: AppLocale = .english
        private var cancellables = Set<AnyCancellable>()
        
        var description: String {
            switch currentLocale {
            case .english:
                return "Learn in Estonia is a unique mobile application that offers you the opportunity to find a suitable path for continuing your studies. Never before has the process been so simple. Get acquainted with different Estonian universities and make your choice from the specialties presented. Do you want to study business, art science, literature, or something else? The choice is yours! \n\nThe purpose of the application is to expand the awareness of Estonians about the educational opportunities offered in Estonia and to simplify access to information. The Learn in Estonia application creates the conditions for promoting education and helping people fulfill their dreams. Information is collected from both the official websites of higher education institutions and other sources of information. \n\nThe information about the specialties comes from the 2023/2024 academic year."
            case .estonian:
                return "Õpi Eestis on ainulaadne mobiilirakendus, mis pakub sulle võimalust leida omale sobiv teekond õpingute jätkamiseks. Kunagi varem pole protsess nii lihtne olnud. Tutvu erinevate Eesti ülikoolidega ning tee oma valik väljatoodud erialade seast. Soovid õppida ärindust, kunstiteadusi, kirjandust või hoopis midagi muud? Valik on sinu! \n\nRakenduse eesmärk on laiendada eestimaalaste teadlikkust Eestis pakutavate õppimisvõimaluste kohta ja lihtsustada informatsiooni kättesaadavust. Rakendus Õpi Eestis loob eeldused edendada haridust ning aidata inimestel oma unistused täita. Informatsioon on kogutud kokku nii kõrgkoolide ametlikelt kodulehekülgedelt kui ka teistest teabeallikatest. \n\nErialade kohta käiv teave pärineb 2023/2024 õppeaastast."
            }
        }
        
        init() {
            DependencyManager.shared.localeManager.$currentLocale
                .sink { [weak self] locale in
                    guard let self else { return }
                    self.currentLocale = locale
                }
                .store(in: &cancellables)
        }
    }
}
