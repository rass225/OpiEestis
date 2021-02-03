import Foundation

struct School: Hashable, Codable, Identifiable {
    var id = UUID()
    var name: String
    var description: [String]
    var location: Location
    var website: String
    var students: Int
    
    var contact: ContactInfo
    var socialMedia: [SocialMedia]
    var logo: String
    var image: String
    var internationalStudents: Int
    var worldRanking: Int
    var vastuvõtt: [String]
    var education: [majorsMinors]
}

struct Location: Hashable, Codable{
    var city: String//Under Info
    var aadress: String//Under Info
    var coordinates: String
}

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
    var studyLocation: [String]
    var eap: Int?
    var ekap: Int?
    var cost: String
}

struct SocialMedia: Hashable, Codable {//
    var website: String
    var link: String
}

struct ContactInfo: Hashable, Codable {
    var phonenumber: String
    var address: String
    var email: String
}

struct Requirements: Hashable, Codable, Identifiable {
    var id = UUID()
    var term: String
    var percentage: Int?
}

enum levelchoice: String, CaseIterable, Codable{
    
    case applied = "rakenduskõrgharidus"
    case integrated = "integreeritud õpe"
    case bachelor = "bakalaureus"
    case masters = "magister"
    case doctor = "doktor"
    case kutseharidus = "kutseharidus"
    
    var description: String {
        get {
            return self.rawValue
        }
    }
}

enum typechoice: String, CaseIterable, Codable {
    //TÜ
    case humanitaar = "humanitaarteadused ja kunstid"
    case sotsiaal = "sotsiaalteadused"
    case loodus = "loodus- ja täppisteadused"
    case meditsiin = "mediitsiiniteadused"
    //TTÜ
    case majandus = "Majandusteadus"
    case infotehnoloogia = "Infotehnoloogia teadus"
    case insener = "Inseneriteadus"
    case loodusteadus = "Loodusteadus"
    case mereAkadeemia = "Eesti Mereakadeemia"
    //Kunstiakadeemia
    case vabadKunstid = "Vabade Kunstide teadus"
    case disain = "Disainiteadus"
    case arhitektuur = "Arhitektuuriteadus"
    case kunstikultuur = "Kunstikultuuri teadus"
   //Lennuakadeemia
    case transport = "Transporditeenused"
    case tehnika = "Tehnik, tootmine ja tehnoloogoia"
    //Maaülikool
    //*sotsiaalteadus
    //*tehnika
    case metsandus = "Metsandus- ja Maaehitusteadus"
    case põllumajandus = "Põllumajandus- ja keskkonnateadus"
    case veterinaaria = "Veterinaaria"
                         
    //muusikaakadeemia
    case muusikaTeater = "Muusika ja Teatrikunstid"
    case ärindus = "Ärindus ja Haldusteadus"
    case koolitus = "koolitus ja Kasvatusteadus"
    
    //
    case riigiKaitse = "Riigikaitse"
    //Tartu Tervishoiu Kõrgkool
    case tervishoid = "Tervishoidu teadus"
    case sotsiaaltöö = "Sotsiaaltöö ja nõustamine"
    
    //Tallinna Tervishoiu Kõrgkool
    case heaolu = "Tervis ja heaolu"
    
    //Tallinna Ülikool
    case BFM = "Balti Filmi ja Meedia Instituut"
    case digitehnoloogia = "Digitehnoloogiate Instituut"
    case haridusteadus = "Haridusteaduste Instituut"
    case humanitaarteadus = "Humanitaarteaduste Instituut"
    case loodusteadusInstituut = "loodus- ja terviseteaduste Instituut"
    case ühiskond = "Ühiskonnateaduste Instituut"
    
    //Tallinna Tehnikakõrgkool
    case ehitus = "Ehitusinstituut"
    case logistika = "Logistikainstituut"
    case riigiMajandus = "Riigimajanduse Instituut"
    case rõivasTekstiil = "Rõiva ja Tekstiili Instituut"
    case teenusMajandus = "Teenusmajanduse Instutuut"
    case tehnikaInstituut = "Tehnikainstituut"
    
    //Sisekaitseakadeemia
    case finantskolledž = "Finantskolledž"
    case justiitskolledž = "Justiitskolledž"
    case Politseijapiirivalvekolledž = "Politsei- ja piirivalve"
    case Päästekolledž = "Päästekolledž"
    case Sisejulgeolek = "Sisejulgeoleku Instituut"
    
    case none = ""
    case kunstid = "kunstid"
    
    var description: String {
        get {
            return self.rawValue
        }
    }
}

enum languagechoice: String, CaseIterable, Codable {
    case eesti = "eesti keel"
    case inglise = "inglise keel"
    case hispaania = "hispaania keel"
    case prantsuse = "prantsuse keel"
    case saksa = "saksa keel"
    case vene = "vene keel"
    
    var description: String {
        get {
            return self.rawValue
        }
    }
    
}

var schools = [
    kunstiakadeemia,
    maaülikool,
    MuusikaAkadeemia,
    kõrgemkunstikoolPallas,
    tallinnaÜlikool,  
    TTK,
    mainor,
    lennuakadeemia,
    ttü,
    sisekaitseakadeemia,
    ebs,
    tartuTervishoiuKõrgkool,
    tartuÜlikool,
    Kaitseakadeemia,
//    tallinnaTervishoiuKõrgkool ////Korras - Leping?
]
