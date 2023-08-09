var ttü = School(
    name: .taltech,
    description: ["TalTech on Eestis ainuke tehnika- ja IT-teaduse ning –hariduse lipulaev, kust saab kõrgharidust kõigil astmetel inseneri- ja tehnikateadustes, infotehnoloogias, majanduses, loodusteadustes ja merenduses. Tehnikaülikoolide seas on TalTech maailma 50 parima hulgas.\n\nTalTechi missioon on olla teaduse, tehnoloogia ja innovatsiooni edendaja ning juhtiv inseneri- ja majandushariduse andja Eestis."],
    location: Location(
        city: .tallinn,
        aadress: "Ehitaja tee 5",
        latitude: 59.394400,
        longitude: 24.667949,
        mapLink: .talTech_tallinn,
        branches: [
            Branch(city: .kohtlaJärve, address: "Järveküla tee 75", latitude: 59.4015419, longitude: 27.2888136, mapLink: .talTech_kohtlaJõrve),
            Branch(city: .tartu, address: "Puiestee 78", latitude: 58.3892817, longitude: 26.7279829, mapLink: .talTech_tartu),
            Branch(city: .kuressaare, address: "Tallinna 19", latitude: 58.2543252, longitude: 22.4866063, mapLink: .talTech_kuressaare),
            Branch(city: .tallinn, address: "Ehitaja tee 5", latitude: 59.394400, longitude: 24.667949, mapLink: .talTech_tallinn)
        ]
    ),
    website: "https://www.ttu.ee",
    students: 10282,
    contact: ContactInfo(phonenumber: "+3726202002", address: "Ehitaja tee 5", email: "info@taltech.ee"),
    socialMedia: [
        SocialMedia(website: .twitter, link: "https://www.twitter.com/TallinnTech"),
        SocialMedia(website: .facebook, link: "211235742224040"),
        SocialMedia(website: .youtube, link: "https://www.youtube.com/user/Tipptegijad/featured"),
        SocialMedia(website: .instagram, link: "https://www.instagram.com/tallinna_tehnikaylikool/?hl=en")
    ],
    logo: .taltech,
    image: .taltech,
    imageUrls: [
        "https://i.ytimg.com/vi/qwc2kgdUF3g/maxresdefault.jpg",
        "https://upload.wikimedia.org/wikipedia/commons/0/09/Library_of_Tallinn_University_of_Technology.jpg"
    ],
    internationalStudents: 1667,
    worldRanking: 601,
    vastuvõtt: ["01.01.2021 - 06.07.2021"]
)

//let ttüEducation: [majorsMinors] = ttüBaka + ttüMaka + ttüDoktor + ttüRaka + ttüInter
//ttüMaka
