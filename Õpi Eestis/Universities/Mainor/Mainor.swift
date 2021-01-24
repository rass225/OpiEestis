var mainor = School(
    name: "Eesti Ettevõtluskõrgkool Mainor",
    description: "Eesti Ettevõtluskõrgkool Mainor asutati aastal 1992. Meie missiooniks on ettevõtliku eluhoiaku kujundamine ühiskonnas. 2016 aastal sõlmitud koostöölepinguga on Eesti Ettevõtluskõrgkool Mainor ühendanud jõud Tallinna Tehnikaülikooli, Ülemiste City ja Tehnopoliga. Memorandumiosaliste ühiseks eesmärgiks on tõsta Eesti rahvusvahelist tuntust tehnoloogiariigina, tuua Eestisse suuri rahvusvahelisi ettevõtteid ning kasvatada teadus- ja arendustegevuse alast koostööd Eesti kõrgkoolide ja ettevõtete vahel. Eesti Ettevõtluskõrgkoolil Mainor on Eesti kõrghariduse kõrgeim võimalik institutsionaalne akrediteering. Kõrgkoolil on õpetamisõigus ärinduse ja halduse, infotehnoloogia, isikuteeninduse ning kunstide õppekavagruppides.",
    location: Location(city: "Tallinn", aadress: "Suur-Sõjamäe 10a", coordinates: "https://maps.apple.com/?address=Suur-S%C3%B5jam%C3%A4e%2010A,%2011415%20Tallinn,%20Estonia&auid=7223836979417184260&ll=59.422706,24.800080&lsp=9902&q=Mainori%20K%C3%B5rgkool&_ext=ChgKBAgEEHUKBAgFEAMKBAgGEBkKBAgKEAASJiknKVU4ibVNQDEXvQTfkso4QDml/nqUr7ZNQEHTJ60sGM84QFAE&t=m"),
    website: "https://www.eek.ee/",
    students: 1600,
    contact: ContactInfo(phonenumber: "+3726101900", address: "Suur-Sõjamäe 10a", email: "eek@eek.ee"),
    socialMedia: [
        SocialMedia(website: "Twitter", link: "https://twitter.com/eek_mainor"),
        SocialMedia(website: "Facebook", link: "152893718124581"),
        SocialMedia(website: "Youtube", link: "https://www.youtube.com/channel/UCRWGjic6JupDgYnrLeExbdg"),
        SocialMedia(website: "Instagram", link: "https://www.instagram.com/eekmainor/?hl=en")
    ],
    logo: "Minorlogo2",
    image: "Minorimage",
    internationalStudents: 800,
    worldRanking: 8966,
    vastuvõtt: ["kuni 31.08.2020"],
    education: mainorBaka + mainorMaka
)
