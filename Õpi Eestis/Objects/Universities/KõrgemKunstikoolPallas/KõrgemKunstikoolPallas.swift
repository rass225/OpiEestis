var kõrgemkunstikoolPallas = School(
    name: .pallas,
    description: ["Kõrgem Kunstikool Pallas on Eesti ainuke rakenduslik kunstikõrgkool. Pallas on integreeritud õppekavadega disaini-, konserveerimise/restaureerimise ja kunstikõrgkool, kus toimub õpe seitsmel õppekaval: fotograafia, maal ja restaureerimine, meedia- ja reklaamidisain, mööblidisain ja restaureerimine, nahadisain ja restaureerimine, skulptuur ja tekstiil.", "Pallas on oluline haridus-, kunsti- ja kultuurielu kujundaja Eestis, paistes silma avatuse ja aktiivsusega nii ühiskondlikus elus kaasarääkimisel kui ka avaliku ruumi kujundamisel. Pallas on loonud rahvusvahelistumist toetava keskkonna ja muutnud õppe rahvusvaheliseks ka kohapeal, kaasates õppetöösse väliseksperte ja -õppejõude ning osaledes Eestis toimuvates rahvusvahelistes projektides.", "Pallas teeb koostööd avaliku, era- ja vabasektori organisatsioonide ja asutustega, olles seega osaline ühiskonna väärtuste kujundamisel."],
    location: Location(city: .tartu, aadress: "Tähe 38b", coordinates: .pallas),
    website: "https://pallasart.ee/",
    students: 300,
    contact: ContactInfo(phonenumber: "+3727309822", address: "Tähe 38b", email: "pallasart@pallasart.ee"),
    socialMedia: [
        SocialMedia(website: .instagram, link: "https://www.instagram.com/korgem_kunstikool_pallas/"),
        SocialMedia(website: .facebook, link: "239113169464524"),
        SocialMedia(website: .youtube, link: "https://www.youtube.com/channel/UCxNDcylyNVKzwvSAWkA-JOg")],
    logo: .pallas,
    image: .pallas,
    internationalStudents: 10,
    worldRanking: 15584,
    vastuvõtt: ["01.06.2021 - 27.06.2021"]
)

let pallasEducation: [majorsMinors] = pallasBaka
