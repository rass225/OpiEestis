var MuusikaAkadeemia = School(
    name: "Eesti Muusika- ja Teatriakadeemia",
    description: "Eesti Muusika- ja Teatriakadeemia on avalik-õiguslik Eesti muusikakõrgkool Tallinnas, mis asutati 1919. aastal Estonia Seltsi algatusel Tallinna Kõrgema Muusikakooli nime all. EMTAs võib bakalaureuse-, magistri- ja doktoriõppe tasemel õppida kõiki tähtsamaid muusika ja teatrikunstiga seotud erialasid – orelist ja klavessiinist jazz- ja pärimusmuusikani. Lauljate ja instrumentalistide kõrval koolitatakse bakalaureuseõppes ka dirigente, heliloojaid, muusikateadlasi, muusikaõpetajaid ja helirežissööre. EMTA peab tähtsaks Eesti rahvuskultuuri püsiväärtuste ning euroopaliku muusika- ja teatrihariduse akadeemiliste traditsioonide hoidmist, olles samas avatud muusika- ja teatrimaailma uusimatele arengusuundadele.",
    location: Location(city: "Tallinn", aadress: "Tatari 13", coordinates: "https://maps.apple.com/?address=R%C3%A4vala%20puiestee%2016,%2010141%20Tallinn,%20Estonia&auid=221645104458708084&ll=59.431273,24.748163&lsp=9902&q=Estonian%20Academy%20of%20Music%20and%20Theatre&_ext=ChkKBAgEEHUKBAgFEAMKBQgGEN8BCgQIChAAEiYpII+Ffq22TUAx5Hb+iUe9OEA5nmSr2tO3TUBBava7Jc3BOEBQBA%3D%3D&t=m"),
    website: "https://eamt.ee/",
    students: 567,
    contact: ContactInfo(phonenumber: "+3726675700", address: "Tatari 13", email: "info@eamt.ee"),
    socialMedia: [
        SocialMedia(website: "Instagram", link: "https://www.instagram.com/emta_music/"),
        SocialMedia(website: "Facebook", link: "296001639005"),
        SocialMedia(website: "Youtube", link: "https://www.youtube.com/user/EMTAVIDEO/videos")
    ],
    logo: "EMTA",
    image: "muusikaakadeemiaimage",
    internationalStudents: 0,
    worldRanking: 10570,
    vastuvõtt: ["03.06 - 28.06.2021"],
    education: muusikaAkadeemiaBaka + muusikaAkadeemiaMaka + muusikaAkadeemiaDoktor
)
