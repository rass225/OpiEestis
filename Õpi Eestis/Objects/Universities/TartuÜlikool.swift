import Foundation
var tartuÜlikool = School(
    name: .tartuÜlikool,
    description: ["Tartu Ülikool on vanim ja suurim Eestis tegutsev ülikool. Ainukese ülikoolina Baltimaades kuulub Tartu Ülikool 1,2% maailma parimate sekka. Tartu Ülikooli asutamisaastaks loetakse aastat 1632, kuid eestikeelse ülikoolina alustas see tööd alles 1919. aastal. Tartu Ülikool on kiirelt arenev rahvusvaheline teadusülikool, rahvusülikoolina Eesti akadeemilise vaimsuse keskus ja ühiskonna arengu eestvedaja. Tartu Ülikooli missiooniks, tema olemise ülimaks põhjuseks, on hoida alal ja kanda endas akadeemilist vaimsust, mille sihiks on teaduse kaudu tõeni jõudmine. Ülikooli eesmärgiks on anda oma panus maailmateadusesse, edendada teaduspõhisust Eesti ühiskonnas ja tagada Eesti haritlaskonna järelkasv.", "Tartu Ülikool on ainus Baltimaade ülikool maailma parimate ülikoolide 1,2% seas: kahes maailma mainekaimate hulka kuuluvas ülikoolide edetabelis esimese 300 hulgas (285. koht edetabelis QS World University Rankings 2021 ja 251.–300. koht edetabelis Times Higher Education World University Rankings 2021). Uue Euroopa parim ülikool (esikoht edetabelis Times Higher Education New Europe Ranking 2018) ning tärkava Euroopa ja Kesk-Aasia regiooni paremuselt teine ülikool (QS University Rankings: Emerging Europe and Central Asia 2021)", "Tartu Ülikool on maailma 1% viidatuimate ülikoolide ja teadusasutuste hulgas 12 teadusvaldkonnas. 64 Tartu Ülikooli teadlast kuulub 1% maailma enim viidatud teadlaste hulka (Web of Science)", "Üle poole Eesti doktoritöödest kaitstakse Tartu Ülikoolis. 2020. aastal kaitsti esialgsetel andmetel 111 doktoritööd. Üle poole Eesti teaduspublikatsioonidest avaldavad Tartu Ülikooli teadlased. Viimasel viiel aastal on Tartu Ülikooli teadlased avaldanud keskmiselt 3500 publikatsiooni aastas, sh keskmiselt 1300 Web of Science ja Scopus andmebaasis teaduspublikatsiooni."],
    location: Location(
        city: .tartu,
        aadress: "Ülikooli 18",
        latitude: 58.381114,
        longitude: 26.719898,
        mapLink: .tartuÜlikool_tartu,
        branches: [
            Branch(city: .narva, address: "Raekoja plats 2", latitude: 59.3791019, longitude: 28.1971821, mapLink: .tartuÜlikool_narva),
            Branch(city: .viljandi, address: "Posti 1", latitude: 58.3664078, longitude: 25.5953052, mapLink: .tartuÜlikool_viljandi),
            Branch(city: .tallinn, address: "Teatri väljak 3-303", latitude: 59.4329636, longitude: 24.7433143, mapLink: .tartuÜlikool_tallinn),
            Branch(city: .pärnu, address: "Ringi 35", latitude: 58.38492, longitude: 24.4864965, mapLink: .tartuÜlikool_pärnu),
            Branch(city: .tartu, address: "Ülikooli 18", latitude: 58.381114, longitude: 26.719898, mapLink: .tartuÜlikool_tallinn)
        ]
    ),
    website: "https://ut.ee/et",
    students: 13412,
    contact: ContactInfo(phonenumber: "+3727375651", address: "Ülikooli 18", email: "info@ut.ee"),
    socialMedia: [
        SocialMedia(website: .twitter, link: "https://twitter.com/unitartu"),
        SocialMedia(website: .facebook, link: "112202581471"),
        SocialMedia(website: .youtube, link: "https://www.youtube.com/user/tartuylikool/featured"),
        SocialMedia(website: .instagram, link: "https://www.instagram.com/unitartu/?hl=en")
    ],
    logo: .tartuÜlikool,
    image: .tartuÜlikool,
    imageUrls: [
        "https://storage-prtl-co.imgix.net/mp/58923fb6.jpg",
        "https://astlanda.ee/wp-content/uploads/2015/04/52.jpg"
    ],
    internationalStudents: 1800,
    worldRanking: 285,
    vastuvõtt: ["01.02 - 15.04.2021", "17.06 - 30.06.2021"]
)
