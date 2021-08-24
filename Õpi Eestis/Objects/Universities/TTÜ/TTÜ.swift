var ttü = School(
    name: .taltech,
    description: ["TalTech on Eestis ainuke tehnika- ja IT-teaduse ning –hariduse lipulaev, kust saab kõrgharidust kõigil astmetel inseneri- ja tehnikateadustes, infotehnoloogias, majanduses, loodusteadustes ja merenduses. Tehnikaülikoolide seas on TalTech maailma 50 parima hulgas.", "TalTechi missioon on olla teaduse, tehnoloogia ja innovatsiooni edendaja ning juhtiv inseneri- ja majandushariduse andja Eestis."],
    location: Location(city: .tallinn, aadress: "Ehitaja tee 5", coordinates: .taltech),
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
    internationalStudents: 1667,
    worldRanking: 601,
    vastuvõtt: ["01.01.2021 - 06.07.2021"]
)

let ttüEducation: [majorsMinors] = ttüBaka + ttüMaka + ttüDoktor + ttüRaka + ttüInter
