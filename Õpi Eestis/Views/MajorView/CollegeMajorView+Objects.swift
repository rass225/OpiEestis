import SwiftUI

// MARK: - Objects

extension CollegeMajorView.Model {
    struct TahvelCurriculum: Codable {
        var outcomesEt: String
        var outcomesEn: String?
        let credits: Double
        let studyLanguages: [String]
        let versions: [CurriculumVersion]
        
        enum CodingKeys: String, CodingKey {
            case outcomesEt
            case outcomesEn
            case credits
            case studyLanguages
            case versions
        }
        
        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.outcomesEt = try container.decode(String.self, forKey: .outcomesEt)
            outcomesEt = outcomesEt.replacingOccurrences(of: "\n•\t", with: "\n\n**•** ")
            outcomesEt = outcomesEt.replacingOccurrences(of: "\r\n-\t", with: "\n\n**•** ")
            outcomesEt = outcomesEt.replacingOccurrences(of: "-\t", with: "**•** ")
            outcomesEt = outcomesEt.replacingOccurrences(of: "\n\n1) ", with: "\n\n**•** ")
            outcomesEt = outcomesEt.replacingOccurrences(of: "\r\n-", with: "\n\n**•**")
            outcomesEt = outcomesEt.replacingOccurrences(of: "\r\n• ", with: "\n\n**•** ")
            outcomesEt = outcomesEt.replacingOccurrences(of: "\n-", with: "\n\n**•** ")
            outcomesEt = outcomesEt.replacingOccurrences(of: "\r\n1)\t", with: "\n\n**•** ")
            outcomesEt = outcomesEt.replacingOccurrences(of: "\r\n2)\t", with: "\n\n**•** ")
            outcomesEt = outcomesEt.replacingOccurrences(of: "\r\n3)\t", with: "\n\n**•** ")
            outcomesEt = outcomesEt.replacingOccurrences(of: "\r\n4)\t", with: "\n\n**•** ")
            outcomesEt = outcomesEt.replacingOccurrences(of: "\r\n5)\t", with: "\n\n**•** ")
            outcomesEt = outcomesEt.replacingOccurrences(of: "\r\n6)\t", with: "\n\n**•** ")
            outcomesEt = outcomesEt.replacingOccurrences(of: "\n1.\t", with: "\n\n**•** ")
            outcomesEt = outcomesEt.replacingOccurrences(of: "\n1)\t", with: "\n\n**•** ")
            outcomesEt = outcomesEt.replacingOccurrences(of: "\n2)\t", with: "\n\n**•** ")
            outcomesEt = outcomesEt.replacingOccurrences(of: "\n3)\t", with: "\n\n**•** ")
            outcomesEt = outcomesEt.replacingOccurrences(of: "\n4)\t", with: "\n\n**•** ")
            outcomesEt = outcomesEt.replacingOccurrences(of: "\n5)\t", with: "\n\n**•** ")
            outcomesEt = outcomesEt.replacingOccurrences(of: "\n6)\t", with: "\n\n**•** ")
            outcomesEt = outcomesEt.replacingOccurrences(of: "\n7)\t", with: "\n\n**•** ")
            outcomesEt = outcomesEt.replacingOccurrences(of: "\n8)\t", with: "\n\n**•** ")
            outcomesEt = outcomesEt.replacingOccurrences(of: "\n9)\t", with: "\n\n**•** ")
            outcomesEt = outcomesEt.replacingOccurrences(of: "\n1) ", with: "\n\n**•** ")
            outcomesEt = outcomesEt.replacingOccurrences(of: "\n2) ", with: "\n\n**•** ")
            outcomesEt = outcomesEt.replacingOccurrences(of: "\n3) ", with: "\n\n**•** ")
            outcomesEt = outcomesEt.replacingOccurrences(of: "\n4) ", with: "\n\n**•** ")
            outcomesEt = outcomesEt.replacingOccurrences(of: "\n5) ", with: "\n\n**•** ")
            outcomesEt = outcomesEt.replacingOccurrences(of: "\n6) ", with: "\n\n**•** ")
            outcomesEt = outcomesEt.replacingOccurrences(of: "\n7) ", with: "\n\n**•** ")
            outcomesEt = outcomesEt.replacingOccurrences(of: "\n8) ", with: "\n\n**•** ")
            outcomesEt = outcomesEt.replacingOccurrences(of: "\n9) ", with: "\n\n**•** ")
            outcomesEt = outcomesEt.replacingOccurrences(of: "1.\t", with: "**•** ")
            outcomesEt = outcomesEt.replacingOccurrences(of: "\n2.\t", with: "\n\n**•** ")
            outcomesEt = outcomesEt.replacingOccurrences(of: "\n3.\t", with: "\n\n**•** ")
            outcomesEt = outcomesEt.replacingOccurrences(of: "\n4.\t", with: "\n\n**•** ")
            outcomesEt = outcomesEt.replacingOccurrences(of: "\n5.\t", with: "\n\n**•** ")
            outcomesEt = outcomesEt.replacingOccurrences(of: "\n6.\t", with: "\n\n**•** ")
            outcomesEt = outcomesEt.replacingOccurrences(of: "\n7.\t", with: "\n\n**•** ")
            outcomesEt = outcomesEt.replacingOccurrences(of: "\n8.\t", with: "\n\n**•** ")
            outcomesEt = outcomesEt.replacingOccurrences(of: "\n1.", with: "\n\n**•** ")
            outcomesEt = outcomesEt.replacingOccurrences(of: "\n2.", with: "\n\n**•** ")
            outcomesEt = outcomesEt.replacingOccurrences(of: "\n3.", with: "\n\n**•** ")
            outcomesEt = outcomesEt.replacingOccurrences(of: "\n4.", with: "\n\n**•** ")
            outcomesEt = outcomesEt.replacingOccurrences(of: "\n5.", with: "\n\n**•** ")
            outcomesEt = outcomesEt.replacingOccurrences(of: "\n6.", with: "\n\n**•** ")
            outcomesEt = outcomesEt.replacingOccurrences(of: "\n7.", with: "\n\n**•** ")
            
            self.outcomesEn = try container.decodeIfPresent(String.self, forKey: .outcomesEn)
            outcomesEn = outcomesEn?.replacingOccurrences(of: "\n1) ", with: "\n\n**•** ")
            outcomesEn = outcomesEn?.replacingOccurrences(of: "\n2) ", with: "\n\n**•** ")
            outcomesEn = outcomesEn?.replacingOccurrences(of: "\n3) ", with: "\n\n**•** ")
            outcomesEn = outcomesEn?.replacingOccurrences(of: "\n4) ", with: "\n\n**•** ")
            outcomesEn = outcomesEn?.replacingOccurrences(of: "\n5) ", with: "\n\n**•** ")
            outcomesEn = outcomesEn?.replacingOccurrences(of: "\n6) ", with: "\n\n**•** ")
            outcomesEn = outcomesEn?.replacingOccurrences(of: "\n7) ", with: "\n\n**•** ")
            outcomesEn = outcomesEn?.replacingOccurrences(of: "\n8) ", with: "\n\n**•** ")
            outcomesEn = outcomesEn?.replacingOccurrences(of: "\n9) ", with: "\n\n**•** ")
            self.credits = try container.decode(Double.self, forKey: .credits)
            self.studyLanguages = try container.decode([String].self, forKey: .studyLanguages)
            self.versions = try container.decode([CurriculumVersion].self, forKey: .versions)
        }
    }
    
    struct CurriculumVersion: Codable {
        let admissionYear: Int?
        let modules: [CurriculumModule]
        let occupationModules: [CurriculumOccupationalModule]
        
        func convertCurriculumModulesToModules(isEnglishOnly: Bool) -> [Module] {
            var newModules: [Module] = []
            modules.forEach { module in
                if isEnglishOnly {
                    var newCourses: [Course] = []
                    module.subjects.forEach { courses in
                        let course: Course = .init(
                            name: courses.subject.nameEn,
                            eapCount: courses.subject.credits
                        )
                        newCourses.append(course)
                    }
                    let module: Module = .init(name: module.nameEn, courses: newCourses)
                    newModules.append(module)
                } else {
                    var newCourses: [Course] = []
                    module.subjects.forEach { courses in
                        let course: Course = .init(
                            name: courses.subject.nameEt,
                            eapCount: courses.subject.credits
                        )
                        newCourses.append(course)
                    }
                    let module: Module = .init(name: module.nameEt, courses: newCourses)
                    newModules.append(module)
                }
            }
            
            return newModules
        }
        
        func convertCurriculumOccupationalModulesToModules() -> [Module] {
            var newModules: [Module] = []
            occupationModules.forEach { module in
                var newCourses: [Course] = []
                module.themes.forEach { courses in
                    let course: Course = .init(
                        name: courses.nameEt,
                        eapCount: courses.credits
                    )
                    newCourses.append(course)
                }
                let module: Module = .init(name: module.nameEt, courses: newCourses)
                newModules.append(module)
            }
            
            return newModules
        }
    }
    
    struct CurriculumModule: Codable {
        let nameEt: String
        let nameEn: String
        let subjects: [CurriculumSubject]
    }
    
    struct CurriculumOccupationalModule: Codable {
        let nameEt: String
        let nameEn: String?
        let themes: [CurriculumTheme]
    }
    
    struct CurriculumSubject: Codable {
        let subject: CurriculumSubjectSubject
    }
    
    struct CurriculumTheme: Codable {
        let nameEt: String
        let nameEn: String?
        let credits: Double
    }
    
    struct CurriculumSubjectSubject: Codable {
        let nameEt: String
        let nameEn: String
        let credits: Double
    }
    
    enum Tabs: CaseIterable {
        case overview
        case requirements
        case modules
        case outcomes
        case personnel
        
        var image: Image {
            switch self {
            case .overview: return Theme.Icons.doc
            case .requirements: return Theme.Icons.requirements
            case .modules: return Theme.Icons.stack
            case .outcomes: return Theme.Icons.outcomes
            case .personnel: return Theme.Icons.person2
            }
        }
    }
    
    enum ViewState {
        case loading
        case success
    }
    
    
    struct OisDetailedCourse: Codable {
        let uuid: String
        let title: OisText
        let credits: Double
    }
    
    struct OisText: Codable {
        let en: String?
        var et: String
        
        enum CodingKeys: String, CodingKey {
            case en
            case et
        }
        
        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.et = try container.decode(String.self, forKey: .et)
            if et.hasPrefix(" ") {
                et = String(et.dropFirst(1))
            }
            self.en = try container.decodeIfPresent(String.self, forKey: .en)
        }
    }
    
    struct OisCurriculum: Codable {
        let overview: OisOverview
        let credits: Double
        let general: OisGeneralInformation
    }
    
    struct OisOverview: Codable {
        let learningOutcomes: [OisOutcomes]
        
        enum CodingKeys: String, CodingKey {
            case learningOutcomes = "learning_outcomes"
        }
    }
    
    struct OisOutcomes: Codable {
        let en: String?
        var et: String?
        
        enum CodingKeys: String, CodingKey {
            case en
            case et
        }
        
        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.et = try container.decodeIfPresent(String.self, forKey: .et)
            et = et?.replacingOccurrences(of: "\r\n\r\n1)", with: "\n\n**•** ")
            et = et?.replacingOccurrences(of: "\r\n1.\t", with: "\n\n**•** ")
            et = et?.replacingOccurrences(of: "\r\n2.\t", with: "\n\n**•** ")
            et = et?.replacingOccurrences(of: "\r\n3.\t", with: "\n\n**•** ")
            et = et?.replacingOccurrences(of: "\r\n4.\t", with: "\n\n**•** ")
            et = et?.replacingOccurrences(of: "\r\n5.\t", with: "\n\n**•** ")
            et = et?.replacingOccurrences(of: "\r\n6.\t", with: "\n\n**•** ")
            et = et?.replacingOccurrences(of: "\r\n7.\t", with: "\n\n**•** ")
            et = et?.replacingOccurrences(of: "\r\n8.\t", with: "\n\n**•** ")
            et = et?.replacingOccurrences(of: "\r\n9.\t", with: "\n\n**•** ")
            et = et?.replacingOccurrences(of: "\r\n10.\t", with: "\n\n**•** ")
            et = et?.replacingOccurrences(of: "\r\n11.1. ", with: "\n\n**•** ")
            et = et?.replacingOccurrences(of: "\r\n11.2. ", with: "\n\n**•** ")
            et = et?.replacingOccurrences(of: "\r\n11.3. ", with: "\n\n**•** ")
            et = et?.replacingOccurrences(of: "\r\n11.4. ", with: "\n\n**•** ")
            et = et?.replacingOccurrences(of: "\r\n11.5. ", with: "\n\n**•** ")
            et = et?.replacingOccurrences(of: "\r\n11.6. ", with: "\n\n**•** ")
            et = et?.replacingOccurrences(of: "\r\n11.7. ", with: "\n\n**•** ")
            et = et?.replacingOccurrences(of: "\r\n2)\t", with: "\n\n**•** ")
            et = et?.replacingOccurrences(of: "\r\n3)\t", with: "\n\n**•** ")
            et = et?.replacingOccurrences(of: "\r\n4)\t", with: "\n\n**•** ")
            et = et?.replacingOccurrences(of: "\r\n5)\t", with: "\n\n**•** ")
            et = et?.replacingOccurrences(of: "\r\n6)\t", with: "\n\n**•** ")
            et = et?.replacingOccurrences(of: "\r\n7)\t", with: "\n\n**•** ")
            et = et?.replacingOccurrences(of: "\r\n8)\t", with: "\n\n**•** ")
            et = et?.replacingOccurrences(of: "\r\n9)\t", with: "\n\n**•** ")
            et = et?.replacingOccurrences(of: "\r\n10)\t", with: "\n\n**•** ")
            et = et?.replacingOccurrences(of: "\r\n11)\t", with: "\n\n**•** ")
            et = et?.replacingOccurrences(of: "\r\n12)\t", with: "\n\n**•** ")
            et = et?.replacingOccurrences(of: "\r\n10) ", with: "\n\n**•** ")
            et = et?.replacingOccurrences(of: "\r\n11) ", with: "\n\n**•** ")
            et = et?.replacingOccurrences(of: "\r\n1) ", with: "\n\n**•** ")
            et = et?.replacingOccurrences(of: "\r\n2) ", with: "\n\n**•** ")
            et = et?.replacingOccurrences(of: "\r\n3) ", with: "\n\n**•** ")
            et = et?.replacingOccurrences(of: "\r\n4) ", with: "\n\n**•** ")
            et = et?.replacingOccurrences(of: "\r\n5) ", with: "\n\n**•** ")
            et = et?.replacingOccurrences(of: "\r\n6) ", with: "\n\n**•** ")
            et = et?.replacingOccurrences(of: "\r\n7) ", with: "\n\n**•** ")
            et = et?.replacingOccurrences(of: "\r\n8) ", with: "\n\n**•** ")
            et = et?.replacingOccurrences(of: "\r\n9) ", with: "\n\n**•** ")
            et = et?.replacingOccurrences(of: "\r\n- ", with: "\n\n**•** ")
            et = et?.replacingOccurrences(of: "\r\n1. ", with: "\n\n**•** ")
            et = et?.replacingOccurrences(of: "\r\n2. ", with: "\n\n**•** ")
            et = et?.replacingOccurrences(of: "\r\n3. ", with: "\n\n**•** ")
            et = et?.replacingOccurrences(of: "\r\n4. ", with: "\n\n**•** ")
            et = et?.replacingOccurrences(of: "\r\n5. ", with: "\n\n**•** ")
            et = et?.replacingOccurrences(of: "\r\n6. ", with: "\n\n**•** ")
            et = et?.replacingOccurrences(of: "\r\n7. ", with: "\n\n**•** ")
            et = et?.replacingOccurrences(of: "\r\n", with: "\n\n**•** ")
            et = et?.replacingOccurrences(of: "1.\t", with: "**•** ")
            et = et?.replacingOccurrences(of: "2.\t", with: "**•** ")
            et = et?.replacingOccurrences(of: "3.\t", with: "**•** ")
            et = et?.replacingOccurrences(of: "4.\t", with: "**•** ")
            et = et?.replacingOccurrences(of: "5.\t", with: "**•** ")
            et = et?.replacingOccurrences(of: "6.\t", with: "**•** ")
            et = et?.replacingOccurrences(of: "*\t", with: "**•** ")
            et = et?.replacingOccurrences(of: "\r", with: "")
            et = et?.replacingOccurrences(of: "-\t", with: "**•** ")
            et = et?.replacingOccurrences(of: "10)\t", with: "**•** ")
            et = et?.replacingOccurrences(of: "11)\t", with: "**•** ")
            et = et?.replacingOccurrences(of: "12)\t", with: "**•** ")
            et = et?.replacingOccurrences(of: "13)\t", with: "**•** ")
            et = et?.replacingOccurrences(of: "14)\t", with: "**•** ")
            et = et?.replacingOccurrences(of: "15)\t", with: "**•** ")
            et = et?.replacingOccurrences(of: "16)\t", with: "**•** ")
            et = et?.replacingOccurrences(of: "17)\t", with: "**•** ")
            et = et?.replacingOccurrences(of: "1)\t", with: "**•** ")
            et = et?.replacingOccurrences(of: "2)\t", with: "**•** ")
            et = et?.replacingOccurrences(of: "3)\t", with: "**•** ")
            et = et?.replacingOccurrences(of: "4)\t", with: "**•** ")
            et = et?.replacingOccurrences(of: "5)\t", with: "**•** ")
            et = et?.replacingOccurrences(of: "6)\t", with: "**•** ")
            et = et?.replacingOccurrences(of: "7)\t", with: "**•** ")
            et = et?.replacingOccurrences(of: "8)\t", with: "**•** ")
            et = et?.replacingOccurrences(of: "9)\t", with: "**•** ")
            
            if let etPresent = et, etPresent.hasPrefix("- ") {
                et = "• " + etPresent.dropFirst(2)
            }
            if let etPresent = et, etPresent.hasPrefix("1. ") {
                et = "•" + etPresent.dropFirst(2)
            }
            if let etPresent = et, etPresent.hasPrefix("2. ") {
                et = "•" + etPresent.dropFirst(2)
            }
            if let etPresent = et, etPresent.hasPrefix("3. ") {
                et = "•" + etPresent.dropFirst(2)
            }
            if let etPresent = et, etPresent.hasPrefix("4. ") {
                et = "•" + etPresent.dropFirst(2)
            }
            if let etPresent = et, etPresent.hasPrefix("5. ") {
                et = "•" + etPresent.dropFirst(2)
            }
            if let etPresent = et, etPresent.hasPrefix("6. ") {
                et = "•" + etPresent.dropFirst(2)
            }
            if let etPresent = et, etPresent.hasPrefix("12)  ") {
                let newEt = etPresent.dropFirst(8)
                et = "• " + String(newEt).capitalizedSentence
            }
            if let etPresent = et, etPresent.hasPrefix("1)      ") {
                let newEt = etPresent.dropFirst(8)
                et = "• " + String(newEt).capitalizedSentence
            }
            if let etPresent = et, etPresent.hasPrefix("2)      ") {
                let newEt = etPresent.dropFirst(8)
                et = "• " + String(newEt).capitalizedSentence
            }
            if let etPresent = et, etPresent.hasPrefix("3)      ") {
                let newEt = etPresent.dropFirst(8)
                et = "• " + String(newEt).capitalizedSentence
            }
            if let etPresent = et, etPresent.hasPrefix("4)      ") {
                let newEt = etPresent.dropFirst(8)
                et = "• " + String(newEt).capitalizedSentence
            }
            if let etPresent = et, etPresent.hasPrefix("5)      ") {
                let newEt = etPresent.dropFirst(8)
                et = "• " + String(newEt).capitalizedSentence
            }
            if let etPresent = et, etPresent.hasPrefix("6)      ") {
                let newEt = etPresent.dropFirst(8)
                et = "• " + String(newEt).capitalizedSentence
            }
            if let etPresent = et, etPresent.hasPrefix("7)      ") {
                let newEt = etPresent.dropFirst(8)
                et = "• " + String(newEt).capitalizedSentence
            }
            if let etPresent = et, etPresent.hasPrefix("8)      ") {
                let newEt = etPresent.dropFirst(8)
                et = "• " + String(newEt).capitalizedSentence
            }
            if let etPresent = et, etPresent.hasPrefix("9)      ") {
                let newEt = etPresent.dropFirst(8)
                et = "• " + String(newEt).capitalizedSentence
            }
            if let etPresent = et, etPresent.hasPrefix("10)  ") {
                let newEt = etPresent.dropFirst(5)
                et = "• " + String(newEt).capitalizedSentence
            }
            if let etPresent = et, etPresent.hasPrefix("11)  ") {
                let newEt = etPresent.dropFirst(5)
                et = "• " + String(newEt).capitalizedSentence
            }
            if let etPresent = et, etPresent.hasPrefix("13)  ") {
                let newEt = etPresent.dropFirst(5)
                et = "• " + String(newEt).capitalizedSentence
            }
            if let etPresent = et, etPresent.hasPrefix("14)  ") {
                let newEt = etPresent.dropFirst(5)
                et = "• " + String(newEt).capitalizedSentence
            }
            self.en = try container.decodeIfPresent(String.self, forKey: .en)
            et = et?.replacingOccurrences(of: "1) ", with: "**•** ")
            et = et?.replacingOccurrences(of: "2) ", with: "**•** ")
            et = et?.replacingOccurrences(of: "3) ", with: "**•** ")
            et = et?.replacingOccurrences(of: "4) ", with: "**•** ")
            et = et?.replacingOccurrences(of: "5) ", with: "**•** ")
            et = et?.replacingOccurrences(of: "5)", with: "**•** ")
            et = et?.replacingOccurrences(of: "6) ", with: "**•** ")
            et = et?.replacingOccurrences(of: "7) ", with: "**•** ")
            et = et?.replacingOccurrences(of: "8) ", with: "**•** ")
            et = et?.replacingOccurrences(of: "9) ", with: "**•** ")
            et = et?.replacingOccurrences(of: "10) ", with: "**•** ")
        }
    }
    
    struct OisGeneralInformation: Codable {
        let inputLanguages: [OisLanguage]
        
        enum CodingKeys: String, CodingKey {
            case inputLanguages = "input_languages"
        }
    }
    
    struct OisVersionGeneralInformation: Codable {
        let inputLanguages: [OisLanguage]?
        let year: OisText
        
        enum CodingKeys: String, CodingKey {
            case inputLanguages = "input_languages"
            case year
        }
    }
    
    struct OisLanguage: Codable {
        let et: String
    }
}

// MARK: - Õis version related objects
extension CollegeMajorView.Model {
    struct OisVersion: Codable {
        let modules: OisModules
        let general: OisVersionGeneralInformation
    }
    
    struct OisModules: Codable {
        let blocks: [OisBlock]
    }
    
    struct OisBlock: Codable {
        let submodules: [OisSubmodule]
        let title: OisText
    }
    
    struct OisSubmodule: Codable {
        let title: OisText
        let credits: Double
        let courses: [OisCourse]?
        let submodules: [OisSubSubmodule]?
        
        enum CodingKeys: String, CodingKey {
            case title
            case credits = "max_credits"
            case courses
            case submodules
        }
    }
    
    struct OisSubSubmodule: Codable {
        let title: OisText
        let credits: Double
        let courses: [OisCourse]?
        let submodules: [OisSubSubSubmodule]?
        
        enum CodingKeys: String, CodingKey {
            case title
            case credits = "max_credits"
            case courses
            case submodules
        }
    }
    
    struct OisSubSubSubmodule: Codable {
        let title: OisText
        let credits: Double
        let courses: [OisCourse]?
        
        enum CodingKeys: String, CodingKey {
            case title
            case credits = "max_credits"
            case courses
        }
    }
    
    struct OisCourse: Codable {
        let mainUuid: String
        
        enum CodingKeys: String, CodingKey {
            case mainUuid = "main_uuid"
        }
    }
}
