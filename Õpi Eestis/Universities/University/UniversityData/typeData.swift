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
