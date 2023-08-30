import Foundation
import SwiftUI

internal enum OEAppearance {
    internal enum Size {
        internal static let height = UIScreen.main.bounds.height
        internal static let width = UIScreen.main.bounds.width
        internal static let halfWidth = UIScreen.main.bounds.width / 2
        internal static let halfHeight = UIScreen.main.bounds.height / 2
        internal static let thirdWidth = UIScreen.main.bounds.width / 3
        internal static let thirdHeight = UIScreen.main.bounds.height / 3
        internal static let quarterWidth = UIScreen.main.bounds.width / 4
        internal static let quarterHeight = UIScreen.main.bounds.height / 4
        internal static let fifthWidth = UIScreen.main.bounds.width / 5
        internal static let fifthHeight = UIScreen.main.bounds.height / 5
        internal static let sixthWidth = UIScreen.main.bounds.width / 6
        internal static let sixthHeight = UIScreen.main.bounds.height / 6
        internal static let test = UIScreen.main.bounds.height / 3.5
    }
    
    internal enum Locale {
        internal static let major = "Eriala"
        internal static let foreignStudents1 = "Välisüliõpilast"
        internal static let foreignStudents2 = "Välisüliõpilasi"
        internal static let students = "Õpilast"
        internal static let none = "N/A"
        internal static let cities = "Linnas"
        internal static let app = "Õpi Eestis"
        internal static let eap = "EAP"
        internal static let ekap = "EKAP"
        internal static let language = "Õppekeel"
        internal static let year = "Aasta"
        internal static let years = "Aastat"
        internal static let duration = "Kestus"
        internal static let fullPayment = "Maksumus"
        internal static let semester = "Semester"
        internal static let spots = "Õppekohti"
        internal static let infinity = "∞"
        internal static let admission = "Vastuvõtt"
        internal static let ebsForeignStudents = "42. riigist"
        internal static let estonia = "Eesti"
        internal static let majors = "Erialad"
        internal static let location = "Asukoht"
        internal static let homepage = "Koduleht"
        internal static let acceptance = "Vastuvõtt"
        internal static let socialMedia = "Sotsiaalmeedia"
        internal static let personnel = "Personal"
        
        internal enum title {
            internal static let outcomes = "Õpiväljundid"
            internal static let description = "Kirjeldus"
            internal static let requirements = "Sisseastumine"
            internal static let about = "Rakendusest"
            internal static let modules = "Moodulid"
            internal static let extra = "Vaata lisa"
        }
        
        internal enum network {
            internal static let fbHttps = "fb://profile/"
            internal static let telHttps = "tel://"
        }
        internal enum languages {
            internal static let estonian = "Eesti keel"
            internal static let spanish = "Hispaania keel"
            internal static let english = "Inglise keel"
            internal static let french = "Prantsuse keel"
            internal static let german = "Saksa keel"
            internal static let russian = "Vene keel"
        }
        
        internal enum search {
            internal static let searchPlaceholder = "Otsi eriala..."
        }
        
        internal enum degrees {
            internal static let allMajors = "Kõik erialad"
            internal static let bachelors = "Bakalaureuseõpe"
            internal static let masters = "Magistriõpe"
            internal static let doctor = "Doktoriõpe"
            internal static let applied = "Rakenduskõrgharidus"
            internal static let kutse = "Kutseharidus"
            internal static let integrated = "Integreeritud õpe"
        }
        
        internal enum expanded {
            internal static let isExpanded = "Vähem"
            internal static let notExpanded = "Rohkem"
        }
        
        internal enum about {
            internal static let copyright = "Copyright © 2019 Rasmus Tauts. All rights reserved."
            internal static let author = "Designed and developed by Rasmus Tauts."
            internal static let description = ["Õpi Eestis on ainulaadne mobiilirakendus, mis pakub sulle võimalust leida omale sobiv teekond õpingute jätkamiseks. Kunagi varem pole protsess nii lihtne olnud. Tutvu erinevate Eesti ülikoolidega ning tee oma valik väljatoodud erialade seast. Soovid õppida ärindust, kunstiteadusi, kirjandust või hoopis midagi muud? Valik on sinu!","Rakenduse eesmärk on laiendada eestimaalaste teadlikkust Eestis pakutavate õppimisvõimaluste kohta ja lihtsustada informatsiooni kättesaadavust. Rakendus Õpi Eestis loob eeldused edendada haridust ning aidata inimestel oma unistused täita. Informatsioon on kogutud kokku nii kõrgkoolide ametlikelt kodulehekülgedelt kui ka teistest teabeallikatest.", "Erialade kohta käiv teave pärineb 2020/2021 õppeaastast."]
        }
    }
}
