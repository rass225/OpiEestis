import SwiftUI

enum PersonalityType: String {
    case istj = "ISTJ"
    case isfj = "ISFJ"
    case infj = "INFJ"
    case intj = "INTJ"
    case istp = "ISTP"
    case isfp = "ISFP"
    case infp = "INFP"
    case intp = "INTP"
    case estp = "ESTP"
    case esfp = "ESFP"
    case enfp = "ENFP"
    case entp = "ENTP"
    case estj = "ESTJ"
    case esfj = "ESFJ"
    case enfj = "ENFJ"
    case entj = "ENTJ"
    
    var title: String {
        switch self {
        case .istj:
            return "The Inspector"
        case .isfj:
            return "The Protector"
        case .infj:
            return "The Advocate"
        case .intj:
            return "The Architect"
        case .istp:
            return "The Crafter"
        case .isfp:
            return "The Artist"
        case .infp:
            return "The Mediator"
        case .intp:
            return "The Thinker"
        case .estp:
            return "The Persuader"
        case .esfp:
            return "The Performer"
        case .enfp:
            return "The Champion"
        case .entp:
            return "The Debater"
        case .estj:
            return "The Director"
        case .esfj:
            return "The Caregiver"
        case .enfj:
            return "The Giver"
        case .entj:
            return "The Commander"
        }
    }
    
    var description: String {
        switch self {
        case .istj:
            return "Reserved and practical, they tend to be loyal, orderly, and traditional."
        case .isfj:
            return "Warm-hearted and dedicated, they are always ready to protect the people they care about."
        case .infj:
            return "Creative and analytical, they are considered one of the rarest Myers-Briggs types."
        case .intj:
            return "High logical, they are both very creative and analytical."
        case .istp:
            return "Highly independent, they enjoy new experiences that provide first-hand learning."
        case .isfp:
            return "Easy-going and flexible, they tend to be reserved and artistic."
        case .infp:
            return "Idealistic with high values, they strive to make the world a better place."
        case .intp:
            return "Quiet and introverted, they are known for having a rich inner world."
        case .estp:
            return "Out-going and dramatic, they enjoy spending time with others and focusing on the here-and-now."
        case .esfp:
            return "Outgoing and spontaneous, they enjoy taking center stage."
        case .enfp:
            return "Charismatic and energetic, they enjoy situations where they can put their creativity to work."
        case .entp:
            return "Highly inventive, they love being surrounded by ideas and tend to start many projects (but may struggle to finish them)."
        case .estj:
            return "Assertive and rule-oriented, they have high principles and a tendency to take charge."
        case .esfj:
            return "Soft-hearted and outgoing, they tend to believe the best about other people."
        case .enfj:
            return "Loyal and sensitive, they are known for being understanding and generous."
        case .entj:
            return "Outspoken and confident, they are great at making plans and organizing projects."
        }
    }
    
    var strengths: [String] {
        switch self {
        case .istj:
            ["Detail-oriented", "Realistic", "Present-focused", "Observant", "Logical and practical", "Orderly and organized"]
        case .isfj:
            ["Reliable", "Practical", "Sensitive", "Eye for detail"]
        case .infj:
            ["Sensitive to the needs of others", "Reserved", "Highly creative and artistic", "Focused on the future", "Values close, deep relationships", "Enjoys thinking about the meaning of life", "Idealistic"]
        case .intj:
            ["Enjoys theoretical and abstract concepts", "High expectations", "Good at listening", "Takes criticism well", "Self-confident and hard-working"]
        case .istp:
            ["Logical", "Learns by experience", "Action-oriented", "Realistic and practical", "Enjoys new things", "Self-confident and easygoing"]
        case .isfp:
            ["Very aware of their environment", "Practical", "Enjoys hands-on learning", "Loyal to values and beliefs"]
        case .infp:
            ["Loyal and devoted", "Sensitive to feelings", "Caring and interested in others", "Works well alone", "Value close relationships", "Good at seeing 'the big picture'"]
        case .intp:
            ["Logical and objective", "Abstract thinker", "Independent", "Loyal and affectionate with loved ones"]
        case .estp:
            ["Gregarious, funny, and energetic", "Influential and persuasive", "Action-oriented", "Adaptable and resourceful", "Observant"]
        case .esfp:
            ["Optimistic and gregarious", "Enjoys people and socializing", "Focused on the present, spontaneous", "Practical"]
        case .enfp:
            ["Warm and enthusiastic", "Empathetic and caring", "Strong people skills", "Strong communication skills", "Fun and spontaneous", "Highly creative"]
        case .entp:
            ["Innovative", "Creative", "Great conversationalist", "Enjoys debating", "Values knowledge"]
        case .estj:
            ["Practical and realistic", "Dependable", "Self-confident", "Hard-working", "Traditional", "Strong leadership skills"]
        case .esfj:
            ["Kind and loyal", "Outgoing", "Organized", "Practical and dependable", "Enjoy helping others", "Conscientious"]
        case .enfj:
            ["Outgoing and warm-hearted", "Empathetic", "Wide social circle", "Encouraging", "Organized", "Affectionate", "Persuasive"]
        case .entj:
            ["Strong leadership skills", "Self-assured", "Well-organized", "Good at making decisions", "Assertive and outspoken", "Strong communication skills"]
        }
    }
    
    var weaknesses: [String] {
        switch self {
        case .istj:
            ["Judgmental", "Subjective", "Tends to blame others", "Insensitive"]
        case .isfj:
            ["Dislikes abstract concepts", "Avoids confrontation", "Dislikes change", "Neglects own needs"]
        case .infj:
            ["Can be overly sensitive", "Sometimes difficult to get to know", "Can have overly high expectations", "Stubborn", "Dislikes confrontation"]
        case .intj:
            ["Can be overly analytical and judgmental", "Very perfectionistic", "Dislikes talking about emotions", "Sometimes seems callous or insensitive"]
        case .istp:
            ["Difficult to get to know", "Insensitive", "Grows bored easily", "Risk-taker", "Does not like commitment"]
        case .isfp:
            ["Dislikes abstract, theoretical information", "Reserved and quiet", "Strong need for personal space", "Dislikes arguments and conflict"]
        case .infp:
            ["Can be overly idealistic", "Tends to take everything personally", "Difficult to get to know", "Sometimes loses sight of the little things", "Overlooks details"]
        case .intp:
            ["Difficult to get to know", "Can be insensitive", "Prone to self-doubt", "Struggles to follow rules", "Has trouble expressing feelings"]
        case .estp:
            ["Impulsive", "Competitive", "Dramatic at times", "Easily bored", "Insensitive"]
        case .esfp:
            ["Dislikes abstract theories", "Becomes bored easily", "Does not plan ahead", "Impulsive"]
        case .enfp:
            ["Needs approval from others", "Disorganized", "Tends to get stressed out easily", "Can be overly emotional", "Overthinks", "Struggles to follow rules"]
        case .entp:
            ["Can be argumentative", "Dislikes routines and schedules", "Does not like to be controlled", "Unfocused", "Insensitive"]
        case .estj:
            ["Insensitive", "Inflexible", "Not good at expressing feelings", "Argumentative", "Bossy"]
        case .esfj:
            ["Needy", "Approval-seeking", "Sensitive to criticism", "Dislike change", "Intolerant", "Controlling"]
        case .enfj:
            ["Approval-seeking", "Overly sensitive", "Indecisive", "Self-sacrificing", "Rigid and uncompromising", "Overprotective", "Manipulative"]
        case .entj:
            ["Impatient", "Stubborn", "Insensitive", "Aggressive", "Intolerant"]
        }
    }
    
    var careers: [String] {
        switch self {
        case .istj:
            ["Accountant", "Computer Programmer", "Dentist", "Doctor", "Librarian", "Lawyer", "Police Officer or Detective", "Military Leader"]
        case .isfj:
            ["Accountant", "Administrator", "Banker", "Bookkeeper", "Child care provider", "Counselor", "Nurse", "Office Manager", "Paralegal", "Social worker", "Teacher"]
        case .infj:
            ["Artist", "Actor", "Entrepreneur", "Religious worker", "Musician", "Librarian", "Counselor", "Psychologist", "Writer", "Teacher", "Photographer"]
        case .intj:
            ["Scientist", "Mathematician", "Engineer", "Dentist", "Doctor", "Teacher", "Judge", "Lawyer"]
        case .istp:
            ["Forensic science", "Engineering", "Mechanics", "Computer programming", "Carpentry", "Law enforcement", "Software engineer", "Photographer", "Physical therapist", "Scientist", "Pilot", "Firefighter"]
        case .isfp:
            ["Artist", "Composer or musician", "Chef", "Designer", "Forest ranger", "Nurse", "Naturalist", "Pediatrician", "Psychologist", "Social worker", "Teacher", "Veterinarian"]
        case .infp:
            ["Artist", "Counselor", "Graphic Designer", "Librarian", "Psychologist", "Physical Therapist", "Social Worker", "Writer"]
        case .intp:
            ["Chemist", "Physicist", "Computer programmer", "Forensic scientist", "Engineer", "Mathematician", "Pharmacist", "Software developer", "Geologist"]
        case .estp:
            ["Computer support technician", "Detectives", "Entrepreneur", "Marketer", "Paramedic", "Police officer", "Sales agent"]
        case .esfp:
            ["Artist", "Actor", "Counselor", "Social worker", "Athletic coach", "Child care provider", "Musician", "Psychologist", "Human resources specialist", "Fashion designer"]
        case .enfp:
            ["Psychologist", "Journalist", "Actor", "TV Anchor/Reporter", "Nutritionist", "Nurse", "Social Worker", "Politician", "Counselor"]
        case .entp:
            ["Engineer", "Lawyer", "Scientist", "Psychologist", "Inventor", "Psychiatrist", "Journalist"]
        case .estj:
            ["Police officer", "Member of the military", "Judge", "Politician", "Teacher", "School administrator", "Business manager", "Accountant", "Banker"]
        case .esfj:
            ["Childcare", "Nursing", "Teaching", "Social work", "Counseling", "Physician", "Receptionist", "Bookkeeper", "Office manager"]
        case .enfj:
            ["Counselor", "Teacher", "Psychologist", "Social worker", "Human resources manager", "Sales representative", "Manager"]
        case .entj:
            ["Human resources manager", "Company CEO or manager", "Lawyer", "Scientist", "Software developer", "Business analyst", "Entrepreneur", "University professor"]
        }
    }
}
