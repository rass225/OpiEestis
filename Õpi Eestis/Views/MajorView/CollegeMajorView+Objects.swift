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
            case .overview: return .docFill
            case .requirements: return .requirementsFill
            case .modules: return .stackFill
            case .outcomes: return .outcomesFill
            case .personnel: return .person2Fill
            }
        }
    }
    
    enum ViewState {
        case loading
        case success
    }
    
    struct OisVersion: Codable {
        let modules: OisModules
        
        func convertOisModulesToModules(isEnglishOnly: Bool) -> [Module] {
            var newModules: [Module] = []
            modules.blocks.forEach { module in
                var newCourses: [Course] = []
                module.submodules.forEach { courses in
                    let course: Course = .init(
                        name: courses.title.et,
                        eapCount: courses.credits
                    )
                    newCourses.append(course)
                }
                let module: Module = .init(name: module.title.et, courses: newCourses)
                newModules.append(module)
                
            }
            
            return newModules
        }
    }
    
    struct OisModules: Codable {
        let blocks: [OisBlock]
    }
    
    struct OisBlock: Codable {
        let submodules: [OisSubmodule]
        let title: OisModuleTitle
    }
    
    struct OisSubmodule: Codable {
        let title: OisModuleTitle
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
        let title: OisModuleTitle
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
    
    struct OisDetailedCourse: Codable {
        let uuid: String
        let title: OisModuleTitle
        let credits: Double
    }
    
    struct OisModuleTitle: Codable {
        let en: String
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
            self.en = try container.decode(String.self, forKey: .en)
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
        let en: String
        var et: String
        
        enum CodingKeys: String, CodingKey {
            case en
            case et
        }
        
        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.et = try container.decode(String.self, forKey: .et)
            et = et.replacingOccurrences(of: "\r", with: "")
            if et.hasPrefix("- ") {
                et = "• " + et.dropFirst(2)
            }
            self.en = try container.decode(String.self, forKey: .en)
        }
    }
    
    struct OisGeneralInformation: Codable {
        let inputLanguages: [OisLanguage]
        
        enum CodingKeys: String, CodingKey {
            case inputLanguages = "input_languages"
        }
    }
    
    struct OisLanguage: Codable {
        let et: String
    }
}
