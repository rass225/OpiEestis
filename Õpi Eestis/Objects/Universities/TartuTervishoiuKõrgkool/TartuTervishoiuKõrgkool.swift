var tartuTervishoiuKõrgkool = School(
    name: .tartuTervishoiuKõrgkool,
    description: ["Tartu Tervishoiu Kõrgkool on nii Eestis kui ka rahvusvaheliselt tunnustatud tänapäevase õpikeskkonnaga tervishoiu-, teenindus- ja sotsiaalalast koolitust pakkuv kõrgkool, mis asutati Tartus aastal 1811. See on ainus kõrgkool Eestis, kus õpetatakse radioloogiatehnikuid, bioanalüütikuid ja tervisekaitse spetsialiste."],
    location: Location(city: .tartu, aadress: "Nooruse 5", coordinates: .tartuTervishoid),
    website: "https://www.nooruse.ee/et",
    students: 1286,
    contact: ContactInfo(phonenumber: "+3727370200", address: "Nooruse 5", email: "nooruse@nooruse.ee"),
    socialMedia: [
        SocialMedia(website: .facebook, link: "152299624797353"),
        SocialMedia(website: .instagram, link: "https://www.instagram.com/tervishoiukorgkool/?hl=en"),
        SocialMedia(website: .youtube, link: "https://www.youtube.com/channel/UCrjggZNKlJ4BHVFxVBd1UaQ")],
    logo: .tartuTervishoid,
    image: .tartuTervishoid,
    internationalStudents: 2,
    worldRanking: 8849,
    vastuvõtt: ["kuni 10.01.2021"]
)

let tartuTervishoiuKõrgkoolEducation: [majorsMinors] = tartuTervishoiuKõrgkoolRaka + tartuTervishoiuKõrgkoolMaka + tartuTervishoiuKõrgkoolKutse
