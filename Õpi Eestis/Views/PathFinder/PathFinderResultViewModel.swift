import SwiftUI

extension PathFinderView.ResultView {
    class Model: ObservableObject {
        let colleges: [College]
        let userCharacteristics: Characteristics
        let recommendedMajors: [RecommendedMajor]
        
        var groupedRecommenededMajors: [String : [RecommendedMajor]] {
            return Dictionary(grouping: recommendedMajors, by: { $0.major.collegeId })
        }
        
        init(
            colleges: [College],
            userCharacteristics: Characteristics,
            recommendedMajors: [RecommendedMajor]
        ) {
            self.colleges = colleges
            self.userCharacteristics = userCharacteristics
            self.recommendedMajors = recommendedMajors
        }
        
        func structureAndInnovationFooter() -> String {
            switch userCharacteristics.structureAndInnovation {
            case ...20:
                return "You have a strong preference for tried-and-true methods. Your approach is highly structured, valuing established routines and proven practices over experimentation."
            case 21...40:
                return "You tend to favor conventional methods, but are open to incorporating some creative ideas. Your approach balances respect for established norms with a willingness to explore occasional innovative solutions."
            case 41...60:
                return "Your approach strikes a balance between traditional and innovative methods. You are comfortable with structured methods but also open to creative solutions, effectively blending familiarity with new ideas."
            case 61...80:
                return "You lean towards innovative and creative approaches. While you appreciate some level of structure, you often seek out new ideas and enjoy experimenting with different methods."
            case 81...:
                return "Your approach is highly innovative and creative. You thrive in environments that encourage unconventional ideas, frequently exploring novel approaches and out-of-the-box thinking."
            default:
                return "default"
            }
        }
        
        func academiaAndCareerFooter() -> String {
            switch userCharacteristics.academiaAndCareer {
            case ...20:
                return "You show a strong inclination towards academic pursuits, preferring to deepen your theoretical knowledge and intellectual understanding over immediate practical application in a career context."
            case 21...40:
                return "Your focus leans more towards academic studies, though you also consider the practical applications of your knowledge. You value intellectual depth while keeping an eye on how it can be applied in a career setting."
            case 41...60:
                return "You maintain a balanced view between academic learning and career application. You appreciate both the intellectual rigor of academic studies and the practical aspects of applying this knowledge in a professional environment."
            case 61...80:
                return "You tend to prioritize career-oriented goals, focusing on how your studies can be applied in a practical, work-related context. While you value academic knowledge, your main interest lies in its practical career applications."
            case 81...:
                return "Your focus is strongly career-oriented. You are primarily interested in how your education and skills can be directly applied in the workplace, prioritizing practical, hands-on experiences that prepare you for your professional life."
            default:
                return "default"
            }
        }
        
        func independenceAndCollaborationFooter() -> String {
            switch userCharacteristics.independenceAndCollaboration {
            case ...20:
                return "You have a strong preference for working independently. You excel in solitary tasks, valuing the space and autonomy to explore ideas and solutions on your own, with minimal reliance on group collaboration."
            case 21...40:
                return "You lean towards independent work, though you are open to collaboration when necessary. You appreciate having your own space to think and create, but you also recognize the benefits of occasional teamwork and shared ideas."
            case 41...60:
                return "Your approach to social interaction is balanced. You are comfortable both working independently and in team settings. You value the autonomy of solo work but also appreciate the insights and dynamics that come from collaborating with others."
            case 61...80:
                return "You have a preference for collaborative work, enjoying the synergy and diverse perspectives that teamwork brings. While you can work alone when needed, you find that working with others often leads to more dynamic and creative outcomes."
            case 81...:
                return "Your orientation is strongly towards teamwork and collaboration. You thrive in group settings and find that working with others significantly enhances your creativity, learning, and overall work experience. You actively seek out opportunities for team-based projects and collaborative efforts."
            default:
                return "default"
            }
        }
        
        func localAndGlobalFooter() -> String {
            switch userCharacteristics.localAndGlobal {
            case ...20:
                return "You have a strong focus on local or national contexts. Your interests and studies are primarily oriented towards understanding and addressing issues within your immediate geographical or cultural environment."
            case 21...40:
                return "Your perspective tends to be more locally or nationally oriented, but you also show some interest in global matters. You appreciate the importance of understanding local contexts while beginning to explore international or multicultural aspects."
            case 41...60:
                return "You maintain a balanced view of local and global perspectives. You value the importance of understanding your own cultural and national context, while also recognizing the significance of global interactions and multicultural viewpoints."
            case 61...80:
                return "You show a strong inclination towards international perspectives. While you understand local and national contexts, your main interest lies in exploring global issues and multicultural interactions, often seeking to broaden your understanding beyond your immediate environment."
            case 81...:
                return "Your orientation is distinctly global. You are deeply interested in international affairs and multicultural perspectives, consistently seeking to understand and engage with issues and ideas from around the world. Your focus is on building a broad, inclusive, and diverse worldview."
            default:
                return "default"
            }
        }
        
        func traditionalAndTechnologicalFooter() -> String {
            switch userCharacteristics.lowAndHighTech {
            case ...20:
                return "You show a preference for low-tech approaches in your studies or work. You value traditional methods and may be less inclined to use advanced digital tools or technologies, focusing more on hands-on, practical techniques."
            case 21...40:
                return "Your approach incorporates some technology, but you generally prefer simpler or more traditional methods. You are open to using digital tools when necessary, but you do not rely heavily on them for your work or studies."
            case 41...60:
                return "You strike a balance between using technology and traditional methods. You are comfortable with a moderate level of digital tool integration and appreciate both tech-driven and conventional approaches in your work and learning."
            case 61...80:
                return "You lean towards incorporating technology in your work or studies. You are adept at using various digital tools and platforms, often seeking ways to enhance your work through technology, while still valuing some traditional methods."
            case 81...:
                return "Your approach is highly tech-oriented. You are very comfortable with and enthusiastic about integrating advanced technologies and digital tools into your work or studies, often exploring cutting-edge technological solutions."
            default:
                return "default"
            }
        }
        
        func theoreticalAndAppliedFooter() -> String {
            switch userCharacteristics.theoreticalAndApplied {
            case ...20:
                return "You have a strong preference for theoretical knowledge. Your focus is on understanding the fundamental principles and concepts in your field, often prioritizing abstract learning over practical application."
            case 21...40:
                return "Your approach leans more towards theoretical understanding, though you also see the value in practical application. You appreciate deep conceptual learning, with some attention to how these theories can be applied in real-world scenarios."
            case 41...60:
                return "You maintain a balanced approach between theoretical and applied knowledge. You value the importance of understanding underlying theories, while also recognizing the significance of applying this knowledge in practical situations."
            case 61...80:
                return "You tend to prioritize applied knowledge, focusing on how theories can be implemented in practical contexts. While you understand the importance of theoretical foundations, your main interest is in their practical application and real-world utility."
            case 81...:
                return "Your focus is strongly on applied knowledge. You are highly interested in hands-on, practical learning, often seeking to directly apply concepts and skills in real-world situations, prioritizing practical experiences over theoretical exploration."
            default:
                return "default"
            }
        }
    }
}

struct RecommendedMajor: Codable {
    let major: NewMajor
    let matchPercentage: Double
}
