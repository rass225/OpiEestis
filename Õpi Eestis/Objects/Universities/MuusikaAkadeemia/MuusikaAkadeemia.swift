var MuusikaAkadeemia = School(
    name: .teatriakadeemia,
    description: ["Eesti Muusika- ja Teatriakadeemia on avalik-õiguslik Eesti muusikakõrgkool Tallinnas, mis asutati 1919. aastal Estonia Seltsi algatusel Tallinna Kõrgema Muusikakooli nime all. EMTAs võib bakalaureuse-, magistri- ja doktoriõppe tasemel õppida kõiki tähtsamaid muusika ja teatrikunstiga seotud erialasid – orelist ja klavessiinist jazz- ja pärimusmuusikani. Lauljate ja instrumentalistide kõrval koolitatakse bakalaureuseõppes ka dirigente, heliloojaid, muusikateadlasi, muusikaõpetajaid ja helirežissööre. EMTA peab tähtsaks Eesti rahvuskultuuri püsiväärtuste ning euroopaliku muusika- ja teatrihariduse akadeemiliste traditsioonide hoidmist, olles samas avatud muusika- ja teatrimaailma uusimatele arengusuundadele."],
    location: Location(city: .tallinn, aadress: "Tatari 13", coordinates: .muusikaAkadeemia),
    website: "https://eamt.ee/",
    students: 567,
    contact: ContactInfo(phonenumber: "+3726675700", address: "Tatari 13", email: "info@eamt.ee"),
    socialMedia: [
        SocialMedia(website: .instagram, link: "https://www.instagram.com/emta_music/"),
        SocialMedia(website: .facebook, link: "296001639005"),
        SocialMedia(website: .youtube, link: "https://www.youtube.com/user/EMTAVIDEO/videos")
    ],
    logo: .muusikaAkadeemia,
    image: .muusikaAkadeemia,
    internationalStudents: 0,
    worldRanking: 10570,
    vastuvõtt: ["03.06.2021 - 28.06.2021"]
)

let muusikaAkadeemiaEducation: [majorsMinors] = muusikaAkadeemiaBaka + muusikaAkadeemiaMaka + muusikaAkadeemiaDoktor
