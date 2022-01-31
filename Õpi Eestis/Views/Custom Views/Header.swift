import SwiftUI

struct Header: View {
    
    enum HeaderType {
        case summary
        case majors
        case location
        case admission
        case socialMedia
        case description
        case modules
        case acceptance
        case outcomes
        case personel
        case homepage
        case contact
    }
    
    let image: Image
    let text: String
    let school: School
    init(type: HeaderType, school: School) {
        self.school = school
        switch type {
        case .summary:
            image = .graduationFill
            text = school.name.rawValue
        case .majors:
            image = .textBook
            text = OEAppearance.Locale.majors
        case .location:
            image = .locationFill
            text = OEAppearance.Locale.location
        case .homepage:
            image = .houseFill
            text = OEAppearance.Locale.homepage
        case .acceptance:
            image = .requirementsFill
            text = OEAppearance.Locale.acceptance
        case .socialMedia:
            image = .socialMedia
            text = OEAppearance.Locale.socialMedia
        case .admission:
            image = .requirementsFill
            text = OEAppearance.Locale.title.requirements
        case .description:
            text = OEAppearance.Locale.title.description
            image = .docFill
        case .modules:
            image = .stackFill
            text = OEAppearance.Locale.title.modules
        case .outcomes:
            image = .outcomesFill
            text = OEAppearance.Locale.title.outcomes
        case .personel:
            image = .person2Fill
            text = OEAppearance.Locale.personnel
        case .contact:
            image = .phoneFill
            text = "Kontakt"
        }
    }
    var body: some View {
        HStack(spacing: 5){
            image
                .font(.callout)
                .foregroundColor(school.color)
                .frame(width: 20, alignment: .leading)
            Text(text)
                .font(.semiBoldBody)
                .foregroundColor(.black)
            Spacer()
        }
        .padding(.bottom, 10)
        .padding(.top)
    }
}
