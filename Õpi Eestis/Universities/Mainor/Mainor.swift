var mainor = School(
    name: "Eesti Ettevõtluskõrgkool Mainor",
    description: ["Eesti Kunstiakadeemia on Eesti ainus arhitektuuri-, disaini-, kunsti- ja kunstikultuurialast kõrgharidust andev avalik-õiguslik ülikool, mis on tegutsenud katkematult 1914. aastast. Sajandivanuse kooli puhul räägime aga kaasaegsest akadeemiast ning loovinimestest, kes tegelevad traditsiooniliste tehnikate ja väljundite kõrval nüüdisaegsete aktuaalsete teemade ja küsimustega.Eesti Kunstiakadeemia (EKA), kui ainus kunstiülikool Eestis, tunnetab enda vastutust õppe, täiendõppe ja teadustöö korralduse ning kvaliteedi eest ühiskonna kultuuriruumi ja elukeskkonda kujundavates kunstivaldkondades. Õppe-, teadus- ja kultuuriasutusena lähtub EKA oma tegevuses nii kunstikultuuri säilitamise ja järjepidevuse põhimõtetest kui ka põhimõttest, et kunstikultuur on pidevas muutumises ning EKA on valmis uuenduste käsitlemiseks nii õppe- kui ka teadustöö tasandil."],
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
    vastuvõtt: ["Kevad: kuni 31.01.2021", "Sügis: kuni 30.09.2021"],
    education: mainorBaka + mainorMaka
)
