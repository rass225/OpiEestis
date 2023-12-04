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
        static let heartSlash: Image = .init(systemName: "heart.slash")
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
        static let settings: Image = .init(systemName: "gearshape.fill")
        static let about: Image = .init(systemName: "book.pages.fill")
        static let donations: Image = .init(systemName: "gift.fill")
    }
    
    enum Locale {
        enum Tabs {
            static let schools: LocalizedStringKey = "tab_schools"
            static let map: LocalizedStringKey = "tab_map"
            static let favorites: LocalizedStringKey = "tab_favorites"
            static let profile: LocalizedStringKey = "tab_profile"
        }
       
        enum App {
            static let name: String = "Õpi Eestis"
        }
        
        enum Favorites {
            static let unauthenticated: LocalizedStringKey = "favorites_unauthenticated"
            static let empty: String = "Sul ei ole ühtegi lemmikut lisatud"
            static let oneYear: String = "aasta"
            static let multipleYears: String = "aastat"
            static let free: String = "Tasuta"
            static let paid: String = "€€€"
        }
        
        enum Map {
            static let unauthenticated: LocalizedStringKey = "map_unauthenticated"
            static let directions: LocalizedStringKey = "map_directions"
            static let waze: LocalizedStringKey = "map_waze"
            static let googleMaps: LocalizedStringKey = "map_googleMaps"
            static let appleMaps: LocalizedStringKey = "map_appleMaps"
        }
        
        enum Profile {
            static let unauthenticated: LocalizedStringKey = "profile_unauthenticated"
            static let myAccount: LocalizedStringKey = "profile_myAccount"
            static let settings: LocalizedStringKey = "profile_settings"
            static let about: LocalizedStringKey = "profile_about"
            static let donations: LocalizedStringKey = "profile_donations"
            static let logout: LocalizedStringKey = "profile_logout"
        }
        
        enum MyAccount {
            static let addPhoto: LocalizedStringKey = "myAccount_addPhoto"
            static let editPhoto: LocalizedStringKey = "myAccount_editPhoto"
            static let name: LocalizedStringKey = "myAccount_name"
            static let firstName: LocalizedStringKey = "myAccount_firstName"
            static let lastName: LocalizedStringKey = "myAccount_lastName"
            static let email: LocalizedStringKey = "myAccount_email"
            static let title: LocalizedStringKey = "myAccount_title"
        }
        
        enum Settings {
            static let title: LocalizedStringKey = "settings_title"
            static let language: LocalizedStringKey = "settings_language"
        }
        
        enum About {
            static let title: LocalizedStringKey = "about_title"
            static let author: String = "Designed and developed by Rasmus Tauts."
            static let copyright: String = "Copyright © 2019 Rasmus Tauts. All rights reserved."
            static let description: LocalizedStringKey = "about_description"
        }
        
        enum Major {
            static let studyYear: LocalizedStringKey = "major_studyYear"
            static let studyType: LocalizedStringKey = "major_studyType"
            static let eap: LocalizedStringKey = "major_eap"
            static let ekap: LocalizedStringKey = "major_ekap"
            static let duration: LocalizedStringKey = "major_duration"
            static let infintiy: LocalizedStringKey = "major_infinity"
            static let language: LocalizedStringKey = "major_language"
            static let description: LocalizedStringKey = "major_description"
            static let modules: LocalizedStringKey = "major_modules"
            static let requirements: LocalizedStringKey = "major_requirements"
            static let outcomes: LocalizedStringKey = "major_outcomes"
            static let homepage: LocalizedStringKey = "major_homepage"
            static let personnel: LocalizedStringKey = "major_personnel"
            static let location: LocalizedStringKey = "major_location"
            static let generalData: LocalizedStringKey = "major_generalData"
            static let addReview: LocalizedStringKey = "major_addReview"
            static let noReviews: LocalizedStringKey = "major_noReviews"
            static let review: LocalizedStringKey = "major_review"
            static let reviews: LocalizedStringKey = "major_reviews"
            static let rating: LocalizedStringKey = "major_rating"
            static let amountOfRatings: LocalizedStringKey = "major_amountOfRatings"
            static let delete: LocalizedStringKey = "major_delete"
            static let goToMajorWebsite: LocalizedStringKey = "major_goToMajorWebsite"
            static let cost: LocalizedStringKey = "major_cost"
            static let amount: LocalizedStringKey = "major_amount"
            static let optional: LocalizedStringKey = "major_optional"
            static let spotCount: LocalizedStringKey = "major_spotCount"
            static let years: LocalizedStringKey = "major_years"
            static let add: LocalizedStringKey = "major_add"
            static let post: LocalizedStringKey = "major_post"
            static let outcomesLabel: LocalizedStringKey = "major_outcomesLabel"
            static let na: LocalizedStringKey = "major_na"
        }
        
        enum Majors {
            static let searchPlaceholder: LocalizedStringKey = "majors_searchPlaceholder"
            static let filters: LocalizedStringKey = "majors_filters"
            static let studyLevel: LocalizedStringKey = "majors_studyLevel"
            static let language: LocalizedStringKey = "majors_language"
            static let all: LocalizedStringKey = "majors_all"
            static let city: LocalizedStringKey = "majors_city"
            static let duration: LocalizedStringKey = "majors_duration"
            static let cost: LocalizedStringKey = "majors_cost"
            static let years: LocalizedStringKey = "majors_years"
            static let free: LocalizedStringKey = "majors_cost_free"
            static let paid: LocalizedStringKey = "majors_cost_paid"
        }
        
        enum Duration {
            static let fiveAndHalfYears: LocalizedStringKey = "duration_five_and_half_years"
            static let fiveYears: LocalizedStringKey = "duration_five_years"
            static let fourAndHalfYears: LocalizedStringKey = "duration_four_and_half_years"
            static let fourYears: LocalizedStringKey = "duration_four_years"
            static let oneAndHalfYears: LocalizedStringKey = "duration_one_and_half_years"
            static let oneYear: LocalizedStringKey = "duration_one_year"
            static let sixYears: LocalizedStringKey = "duration_six_years"
            static let threeAndHalfYears: LocalizedStringKey = "duration_three_and_half_years"
            static let threeYears: LocalizedStringKey = "duration_three_years"
            static let twoAndHalfYears: LocalizedStringKey = "duration_two_and_half_years"
            static let twoYears: LocalizedStringKey = "duration_two_years"
            static let halfYear: LocalizedStringKey = "duration_half_year"
            static let fourFifthsYear: LocalizedStringKey = "duration_four_fifths_year"
            
            static func getYears(amount: Double) -> LocalizedStringKey {
                switch amount {
                case 0.5: return Self.halfYear
                case 0.8: return Self.fourFifthsYear
                case 1: return Self.oneYear
                case 1.5: return Self.oneAndHalfYears
                case 2: return Self.twoYears
                case 2.5: return Self.twoAndHalfYears
                case 3: return Self.threeYears
                case 3.5: return Self.threeAndHalfYears
                case 4: return Self.fourYears
                case 4.5: return Self.fourAndHalfYears
                case 5: return Self.fiveYears
                case 5.5: return Self.fiveAndHalfYears
                case 6: return Self.sixYears
                default:
                    return "Issue"
                }
            }
        }
        
        enum College {
            static let more: LocalizedStringKey = "college_more"
            static let less: LocalizedStringKey = "college_less"
            static let students: LocalizedStringKey = "college_students"
            static let major: LocalizedStringKey = "college_major"
            static let cities: LocalizedStringKey = "college_cities"
            static let back: LocalizedStringKey = "college_back"
            static let lookVirtualTour: LocalizedStringKey = "college_lookVirtualTour"
            static let call: LocalizedStringKey = "college_call"
            static let email: LocalizedStringKey = "college_email"
            static let homepage: LocalizedStringKey = "college_homepage"
            static let admission: LocalizedStringKey = "college_admission"
            static let aboutSchool: LocalizedStringKey = "college_aboutSchool"
            static let location: LocalizedStringKey = "college_location"
            static let majors: LocalizedStringKey = "college_majors"
        }
        
        enum Interval {
            static let semester: String = "Semester"
            static let year: String = "Aasta"
            static let eap: String = "EAP"
        }
        
        enum Outcomes {
            static let title: LocalizedStringKey = "outcomes_title"
        }
        
        enum Language {
            static let all: LocalizedStringKey = "language_all"
            static let english: LocalizedStringKey = "language_english"
            static let estonian: LocalizedStringKey = "language_estonian"
            static let french: LocalizedStringKey = "language_french"
            static let german: LocalizedStringKey = "language_german"
            static let russian: LocalizedStringKey = "language_russian"
            static let spanish: LocalizedStringKey = "language_spanish"
            static let inEnglish: LocalizedStringKey = "language_in_english"
            static let inEstonian: LocalizedStringKey = "language_in_estonian"
            static let inFrench: LocalizedStringKey = "language_in_french"
            static let inGerman: LocalizedStringKey = "language_in_german"
            static let inRussian: LocalizedStringKey = "language_in_russian"
            static let inSpanish: LocalizedStringKey = "language_in_spanish"
        }
        
        enum Level {
            static let all: LocalizedStringKey = "level_all"
            static let applied: LocalizedStringKey = "level_applied"
            static let bachelors: LocalizedStringKey = "level_bachelors"
            static let doctorate: LocalizedStringKey = "level_doctorate"
            static let masters: LocalizedStringKey = "level_masters"
            static let integrated: LocalizedStringKey = "level_integrated"
            static let vocational: LocalizedStringKey = "level_vocational"
        }
        
        enum StudyType {
            static let regular: LocalizedStringKey = "studyType_regular"
            static let cyclical: LocalizedStringKey = "studyType_cyclical"
            static let apprenticeship: LocalizedStringKey = "studyType_apprenticeship"
            static let evening: LocalizedStringKey = "studyType_evening"
            static let remote: LocalizedStringKey = "studyType_remote"
        }
    }
}
