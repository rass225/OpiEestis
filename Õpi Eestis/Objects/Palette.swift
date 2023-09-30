import SwiftUI

struct CollegePalette: Codable, Equatable, Hashable {
    let base: Color
    let bachelors: Color
    let masters: Color
    let doctors: Color
    let applied: Color
    let vocational: Color
    let secondary: Color
    
    enum CodingKeys: String, CodingKey {
        case base
        case bachelors
        case masters
        case doctors
        case applied
        case vocational
        case secondary
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        let baseHex = try container.decode(String.self, forKey: .base)
        base = Color(hex: baseHex)
        
        let bachelorsHex = try container.decode(String.self, forKey: .bachelors)
        bachelors = Color(hex: bachelorsHex)
        
        let mastersHex = try container.decode(String.self, forKey: .masters)
        masters = Color(hex: mastersHex)
        
        let doctorsHex = try container.decode(String.self, forKey: .doctors)
        doctors = Color(hex: doctorsHex)
        
        let appliedHex = try container.decode(String.self, forKey: .applied)
        applied = Color(hex: appliedHex)
        
        let vocationalHex = try container.decode(String.self, forKey: .vocational)
        vocational = Color(hex: vocationalHex)
        
        let secondaryHex = try container.decode(String.self, forKey: .secondary)
        secondary = Color(hex: secondaryHex)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try container.encode(base.toHex(), forKey: .base)
        try container.encode(bachelors.toHex(), forKey: .bachelors)
        try container.encode(masters.toHex(), forKey: .masters)
        try container.encode(doctors.toHex(), forKey: .doctors)
        try container.encode(applied.toHex(), forKey: .applied)
    }
}
