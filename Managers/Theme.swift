import SwiftUI

struct Theme {
    enum Colors {
        static let primary: Color = .init(red: 0, green: 115/255, blue: 207/255)
        static let systemGray: Color = .init(red: 242/255, green: 242/255, blue: 247/255)
        static let black: Color = .init(red: 0.1, green: 0.1, blue: 0.1)
        static let white: Color = Color.white
        static let gray: Color = .gray
        static let secondaryGray: Color = .init(red: 200/255, green: 200/255, blue: 200/255)
    }
    
    enum Icons {
        static let chevronRight = Image(systemName: "chevron.right")
        static let chevronLeft = Image(systemName: "chevron.left")
        static let docs = Image(systemName:"doc.on.doc.fill")
        static let doc = Image(systemName: "doc.text.fill")
        static let appLogo = Image("Õpi Eestis logo")
        static let appLogo2 = Image("estonia2")
        static let person = Image(systemName: "person.fill")
        static let person2 = Image(systemName: "person.2.fill")
        static let mappinCircle = Image(systemName: "mappin.circle.fill")
        static let envelope = Image(systemName: "envelope.fill")
        static let phone = Image(systemName: "phone.fill")
        static let house = Image(systemName: "house.fill")
        static let globe = Image(systemName: "globe")
        static let location = Image(systemName: "location.fill")
        static let euro = Image(systemName: "eurosign.circle.fill")
        static let dollar = Image(systemName: "dollarsign.circle.fill")
        static let squareStack = Image(systemName: "square.stack.3d.up.fill")
        static let clock = Image(systemName: "clock.fill")
        static let requirements = Image(systemName: "person.crop.circle.fill.badge.checkmark")
        static let outcomes = Image(systemName: "briefcase.fill")
        static let graduation = Image(systemName: "graduationcap.fill")
        static let graduationCircle: Image = .init(systemName: "graduationcap.circle.fill")
        static let link = Image(systemName: "link")
        static let stack = Image(systemName: "square.3.stack.3d.top.fill")
        static let textBook = Image(systemName: "text.book.closed.fill")
        static let slider: Image = .init(systemName: "slider.horizontal.3")
        static let heart: Image = .init(systemName: "heart")
        static let star: Image = .init(systemName: "star.fill")
        static let review: Image = .init(systemName: "star.bubble.fill")
        static let help: Image = .init(systemName: "person.crop.circle.badge.questionmark")
        static let expand: Image = .init(systemName: "arrow.up.left.and.down.right.and.arrow.up.right.and.down.left")
        static let map: Image = .init(systemName: "map.fill")
        static let xmark: Image = .init(systemName: "xmark")
        static let car: Image = .init(systemName: "car.fill")
        static let pin: Image = .init("pin")
        static let appIcon: Image = .init("estonia2")
        static let circle: Image = .init(systemName: "circle")
        static let playButton: Image = .init(systemName: "play.circle.fill")
        static let error: Image = .init(systemName: "exclamationmark.triangle")
        static let studyType: Image = .init(systemName: "door.left.hand.closed")
        static let calendar: Image = .init(systemName: "calendar")
        static let plus: Image = .init(systemName: "plus")
        static let delete: Image = .init(systemName: "trash")
        static let logout: Image = .init(systemName: "rectangle.portrait.and.arrow.forward")
        static let edit: Image = .init(systemName: "square.and.pencil")
    }
    
    enum Locale {
        enum Tabs {
            static let schools: String = "Koolid"
            static let map: String = "Kaart"
            static let favorites: String = "Lemmikud"
            static let profile: String = "Profiil"
        }
       
        enum App {
            static let name: String = "Õpi Eestis"
        }
        
        enum Favorites {
            static let unauthenticated: String = "Lemmikute vaatamiseks logi sisse"
            static let empty: String = "Sul ei ole ühtegi lemmikut lisatud"
        }
        
        enum Map {
            static let unauthenticated: String = "Kaardi vaatamiseks logi sisse"
            static let directions: String = "Juhised"
            static let waze: String = "Waze"
            static let googleMaps: String = "Google Maps"
            static let appleMaps: String = "Apple Maps"
        }
        
        enum Profile {
            static let unauthenticated: String = "Profiili vaatamiseks logi sisse"
            static let myAccount: String = "Minu konto"
            static let settings: String = "Seaded"
            static let about: String = "Rakendusest"
            static let donations: String = "Meeldib app? Aita arendajat"
            static let logout: String = "Logi välja"
        }
        
        enum MyAccount {
            static let addPhoto: String = "Lisa foto"
            static let editPhoto: String = "Muuda fotot"
            static let name: String = "Nimi"
            static let firstName: String = "Eesnimi"
            static let lastName: String = "Perekonnanimi"
            static let email: String = "Email"
            static let title: String = "Minu konto"
        }
        
        enum Settings {
            static let title: String = "Seaded"
            static let language: String = "Keel"
            static let estonian: String = "Eesti keel"
            static let english: String = "Inglise keel"
        }
        
        enum About {
            static let title: String = "Title"
            static let author: String = "Designed and developed by Rasmus Tauts."
            static let copyright: String = "Copyright © 2019 Rasmus Tauts. All rights reserved."
            static let description: String = "Õpi Eestis on ainulaadne mobiilirakendus, mis pakub sulle võimalust leida omale sobiv teekond õpingute jätkamiseks. Kunagi varem pole protsess nii lihtne olnud. Tutvu erinevate Eesti ülikoolidega ning tee oma valik väljatoodud erialade seast. Soovid õppida ärindust, kunstiteadusi, kirjandust või hoopis midagi muud? Valik on sinu! \n\nRakenduse eesmärk on laiendada eestimaalaste teadlikkust Eestis pakutavate õppimisvõimaluste kohta ja lihtsustada informatsiooni kättesaadavust. Rakendus Õpi Eestis loob eeldused edendada haridust ning aidata inimestel oma unistused täita. Informatsioon on kogutud kokku nii kõrgkoolide ametlikelt kodulehekülgedelt kui ka teistest teabeallikatest. \n\nErialade kohta käiv teave pärineb 2023/2024 õppeaastast."
        }
        
        enum Major {
            static let studyYear: String = "Õppeaasta"
            static let studyType: String = "Õppevorm"
            static let eap: String = "EAP"
            static let ekap: String = "EKAP"
            static let duration: String = "Kestus"
            static let infintiy: String = "∞"
            static let language: String = "Keel"
            static let description: String = "Kirjeldus"
            static let modules: String = "Moodulid"
            static let requirements: String = "Vastuvõtt"
            static let outcomes: String = "Õpiväljundid"
            static let homepage: String = "Koduleht"
            static let personnel: String = "Personal"
            static let location: String = "Asukoht"
            static let generalData: String = "Üldandmed"
            static let addReview: String = "Lisa arvustus"
            static let noReviews: String = "Ühtegi arvustust pole veel lisatud"
            static let review: String = "Arvustus"
            static let reviews: String = "Arvustused"
            static let rating: String = "Hinnang"
            static let delete: String = "Kustuta"
            static let goToMajorWebsite: String = "Tutvu lähemalt erialaga kooli kodulehel"
            static let cost: String = "Maksumus"
            static let amount: String = "Maht"
            static let optional: String = "vabatahtlik"
            static let spotCount: String = "Õppekohtade arv"
            static let years: String = "aastat"
            static let add: String = "Lisa"
            static let post: String = "Postita"
        }
        
        enum Majors {
            static let searchMajors: String = "Otsi eriala"
            static let filters: String = "Filtrid"
            static let studyLevel: String = "Õppeaste"
            static let language: String = "Õppekeel"
            static let all: String = "Kõik"
            static let city: String = "Linn"
            static let duration: String = "Kestus"
            static let cost: String = "Maksumus"
        }
        
        enum College {
            static let more: String = "Rokhem"
            static let less: String = "Vähem"
            static let students: String = "Õpilast"
            static let major: String = "Eriala"
            static let cities: String = "Linnas"
            static let back: String = "Tagasi"
            static let lookVirtualTour: String = "Vaata virtuaaltuuri"
            static let call: String = "Helista"
            static let email: String = "Email"
            static let homepage: String = "Koduleht"
            static let contact: String = "Kontakt"
            static let admission: String = "Vastuvõtt"
            static let aboutSchool: String = "Koolist"
            static let location: String = "Asukoht"
            static let majors: String = "Erialad"
        }
        
        enum Interval {
            static let semester: String = "Semester"
            static let year: String = "Aasta"
            static let eap: String = "EAP"
        }
    }
}
