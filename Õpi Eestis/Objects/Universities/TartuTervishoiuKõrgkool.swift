var tartuTervishoiuKõrgkool = School(
    name: .tartuTervishoiuKõrgkool,
    description: ["Tartu Tervishoiu Kõrgkool on nii Eestis kui ka rahvusvaheliselt tunnustatud tänapäevase õpikeskkonnaga tervishoiu-, teenindus- ja sotsiaalalast koolitust pakkuv kõrgkool, mis asutati Tartus aastal 1811. See on ainus kõrgkool Eestis, kus õpetatakse radioloogiatehnikuid, bioanalüütikuid ja tervisekaitse spetsialiste."],
    location: Location(
        city: .tartu,
        aadress: "Nooruse 5",
        latitude: 58.365378,
        longitude: 26.691359,
        mapLink: .tartuTervishoid_tartu,
        branches: [
            Branch(city: .viljandi, address: "Pärna tee 3", latitude: 58.3828635, longitude: 25.5746752, mapLink: .tartuTervishoid_viljandi),
            Branch(city: .tallinn, address: "Astangu 27", latitude: 59.4048405, longitude: 24.6341299, mapLink: .tartuTervishoid_tallinn),
            Branch(city: .tartu, address: "Nooruse 5", latitude: 58.365378, longitude: 26.691359, mapLink: .tartuTervishoid_tartu)
        ]
    ),
    website: "https://www.nooruse.ee/et",
    students: 1286,
    contact: ContactInfo(phonenumber: "+3727370200", address: "Nooruse 5", email: "nooruse@nooruse.ee"),
    socialMedia: [
        SocialMedia(website: .facebook, link: "152299624797353"),
        SocialMedia(website: .instagram, link: "https://www.instagram.com/tervishoiukorgkool/?hl=en"),
        SocialMedia(website: .youtube, link: "https://www.youtube.com/channel/UCrjggZNKlJ4BHVFxVBd1UaQ")],
    logo: .tartuTervishoid,
    image: .tartuTervishoid,
    imageUrls: [
        "https://www.med24.ee/sites/default/files/2020-09/Tartu%20Tervishoiu%20K%C3%B5rgkool%20Foto%20Kristjan%20Teedema%20Scanpix.jpg",
        "https://www.esl.ee/wp-content/uploads/2015/03/Tartu-Tervishoiu-K--rgkool-120113016.jpg"
    ],
    internationalStudents: 2,
    worldRanking: 8849,
    vastuvõtt: ["kuni 10.01.2021"]
)
