import Foundation

struct PersonalityTestResult: Codable, Hashable, Equatable {
    let personalityType: PersonalityType
    let percentages: [MbtiDominance]
    let dateCreated: String
}

struct PathfinderTestResult: Codable, Hashable, Equatable {
    
}
