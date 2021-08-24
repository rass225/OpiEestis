var kunstiakadeemia = School(
    name: .kunstiakadeemia,
    description: ["Eesti Kunstiakadeemia on Eesti ainus arhitektuuri-, disaini-, kunsti- ja kunstikultuurialast kõrgharidust andev avalik-õiguslik ülikool, mis on tegutsenud katkematult 1914. aastast. Eesti Kunstiakadeemia (EKA), kui ainus kunstiülikool Eestis, tunnetab enda vastutust õppe, täiendõppe ja teadustöö korralduse ning kvaliteedi eest ühiskonna kultuuriruumi ja elukeskkonda kujundavates kunstivaldkondades."],
    location: Location(city: .tallinn, aadress: "Põhja Puiestee 7", coordinates: .kunstiAkadeemia),
    website: "https://www.artun.ee",
    students: 1140,
    contact: ContactInfo(phonenumber: "+3726267301", address: "Põhja Puiestee 7", email: "artun@artun.ee"),
    socialMedia: [
        SocialMedia(website: .twitter, link: "https://www.twitter.com/Kunstiakadeemia"),
        SocialMedia(website: .facebook, link: "337189606312098"),
        SocialMedia(website: .youtube, link: "https://www.youtube.com/channel/UCL0V3XR8iViHNtRYDK5G1yQ"),
        SocialMedia(website: .instagram, link: "https://www.instagram.com/estonian_academy_of_arts/?hl=en")
    ],
    logo: .kunstiAkadeemia,
    image: .kunstiAkadeemia,
    internationalStudents: 0,
    worldRanking: 7078,
    vastuvõtt: ["Magister: 01.02 - 01.03.2021", "Ülejäänud: 14.06 - 28.06.2021"]
)

let kunstiAkadeemiaEducation: [majorsMinors] =  kunstiAkadeemiaBaka + kunstiAkadeemiaMaka + kunstiAkadeemiaDoktor
