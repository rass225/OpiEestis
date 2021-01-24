var sisekaitseakadeemia = School(
    name: "Sisekaitseakadeemia",
    description: "Siseministeeriumi haldusalas tegutsev Sisekaitseakadeemia on unikaalne terves maailmas, sest kogu riigi siseturvalisusega seotud õpe on koondatud ühte organisatsiooni. Akadeemia valmistab nii kutsehariduse, rakenduskõrghariduse kui ka magistrihariduse tasemel ette sisejulgeolekuvaldkonna spetsialiste. Lisaks korraldatakse Sisekaitseakadeemias täiendusõpet ning osa saab võtta erialasest teadus-, arendus- ja innovatsioonitegevusest. Erialase ettevalmistuse saab pääste-, finants-, justiits- ning politsei- ja piirivalvekolledžist, magistriharidust pakub sisejulgeoleku instituut. Sisekaitseakadeemia visioon on kujuneda aastaks 2025 Euroopa parimaks siseturvalisuse õppe- ja teaduskeskuseks.",
    location: Location(
        city: "Tallinn",
        aadress: "Kase 61",
        coordinates: "https://maps.apple.com/?address=Kase%2061,%2012012%20Tallinn,%20Estonia&auid=14522038457197770030&ll=59.455648,24.842846&lsp=9902&q=Sisekaitseakadeemia&_ext=ChgKBAgEEHUKBAgFEAMKBAgGEBkKBAgKEAASJilEsSZR27lNQDFYWU0YedQ4QDnChkytAbtNQEHQsbaN/9g4QFAE&t=m"),
    website: "https://www.sisekaitse.ee/et",
    students: 1000,
    
    contact: ContactInfo(
        phonenumber: "+3726126800",
        address: "Kase 61",
        email: "info@sisekaitse.ee"),
    socialMedia: [
        SocialMedia(website: "Twitter", link: "https://twitter.com/sisekaitse?lang=en"),
        SocialMedia(website: "Facebook", link: "276322415778300"),
        SocialMedia(website: "Youtube", link: "https://www.youtube.com/channel/UCM8HO7ZBlQlvC43yH8mrIEQ"),
        SocialMedia(website: "Instagram", link: "https://www.instagram.com/sisekaitseakadeemia/?hl=en")],
    logo: "Sisekaitselogo",
    image: "sisekaitseimage",
    internationalStudents: 0,
    worldRanking: 0,
    vastuvõtt: ["25.05 - 29.06.2020"],
    education: sisekaitseAkadeemiaRaka + sisekaitseAkadeemiaKutse + sisekaitseakadeemiaMaka
)


