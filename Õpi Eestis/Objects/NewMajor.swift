import SwiftUI

struct NewMajor: Hashable, Codable {
    var id: String?
    var name: String
    var level: String
    var language: Language
    var majorWebsite: String
    var spots: Int
    var duration: Double
    var studyLocation: [City]
    var eap: Int?
    var ekap: Int?
    var cost: Cost
    var curriculumRef: String?
    var isEnglishOnly: Bool?
    var curriculumDate: String?
    var studyType: String?
    var videoId: String?
    var vimeoId: String?
    var spotifyPath: String?
    var facebookWatchId: String?
}
