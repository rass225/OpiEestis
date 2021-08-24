import Foundation

struct majorsMinors: Hashable, Codable, Identifiable {
    var id = UUID()
    var name: String
    var level: levelchoice
    var type: typechoice
    var requirements: [Requirements]
    var description: [String]
    var outcomes: [String]
    var language: languagechoice
    var majorWebsite: String
    var spots: Int
    var duration: Double
    var studyLocation: [city]
    var eap: Int?
    var ekap: Int?
    var cost: Cost
    var modules: [Module]?
}
