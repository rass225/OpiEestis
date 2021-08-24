var sisekaitseakadeemia = School(
    name: .sisekaitseakadeemia,
    description: ["Sisekaitseakadeemiast on kujunenud siseturvalisuse valdkonna hariduskeskus, kuhu on teretulnud nii äsja keskkooli lõpetanu kui ka juba töökogemusega õppija ning valdkonna teadlane. Akadeemia õppe- ning teadus- ja arendustöö toimub neljas kolledžis ja sisejulgeoleku instituudis. Erialaspetsialiste valmistavad ette pääste-, finants-, justiits-, ning politsei- ja piirivalvekolledž, magistritasemel haridust pakub sisejulgeoleku instituut. Kokku õpib akadeemias igal aastal ligi 900 õppurit, peale selle osaleb täienduskoolitustel ligi 10 000 inimest.", "Akadeemia koondab sisejulgeoleku parimate spetsialistide teadmust ja kogemust juba 25 aastat. Meie 220 töötajast on õppejõude umbes 80. Lisaks neile annab oma panuse õppetöösse üle 200 külalisõppejõu, kellest suurem osa töötab igapäevaselt mõnes sisejulgeolekuasutuses.", "Akadeemia lõpetajatele on peamised tööandjad Politsei- ja Piirivalveamet, Päästeamet, Häirekeskus, Maksu- ja Tolliamet ning Vanglateenistus. Praeguseks on ametnikke koolitatud järjepidevalt 23 aastat ja vilistlasi on kokku üle 10 000.", "Mõtleme ja unistame suurelt: soovime aastaks 2025 kujuneda Euroopa parimaks siseturvalisuse õppe- ja teaduskeskuseks. Taotleme selleks paremat õppekvaliteeti, pöörame suurt tähelepanu metoodikale, küsime ja hindame tagasisidet ning tegutseme innovatsiooni ja rakendusuuringute suunal."],
    location: Location(city: .tallinn, aadress: "Kase 61", coordinates: .sisekaitseAkadeemia),
    website: "https://www.sisekaitse.ee/et",
    students: 1000,
    contact: ContactInfo(phonenumber: "+3726126800", address: "Kase 61", email: "info@sisekaitse.ee"),
    socialMedia: [
        SocialMedia(website: .twitter, link: "https://twitter.com/sisekaitse?lang=en"),
        SocialMedia(website: .facebook, link: "276322415778300"),
        SocialMedia(website: .youtube, link: "https://www.youtube.com/channel/UCM8HO7ZBlQlvC43yH8mrIEQ"),
        SocialMedia(website: .instagram, link: "https://www.instagram.com/sisekaitseakadeemia/?hl=en")],
    logo: .sisekaitseAkadeemia,
    image: .sisekaitseAkadeemia,
    internationalStudents: 0,
    worldRanking: 0,
    vastuvõtt: ["25.02.2021 - 28.06.2021"]
)

let sisekaitseakadeemiaEducation: [majorsMinors] = sisekaitseAkadeemiaRaka + sisekaitseAkadeemiaKutse + sisekaitseakadeemiaMaka

