var lennuakadeemia = School(
    name: .lennuakadeemia,
    description: ["Eesti Lennuakadeemia on riiklik rakenduskõrgkool, kus koolitatakse hinnatud spetsialiste Eesti lennundusettevõtetele. 1993. aastal asutatud ja 2008. aastal Eesti Lennuakadeemiaks ümber nimetatud õppeasutusest on tänaseks saanud kõige populaarsem kõrgkool Eesti noorte seas. 2018. aastal oli kõrgkoolide ja ülikoolide seas kõige suurem konkurents just Eesti Lennuakadeemiasse õppimiseks.", "Lennuakadeemia unikaalne ning praktiline haridus ja kaasaegne õppekeskkond motiveerivad üha enam noori lennunduse vastu huvi tundma. Akadeemia õppeprotsessis rakendatakse Eesti rakenduskõrghariduse ja rahvusvahelisi lennundusalaseid kõrgeid standardeid.", "Akadeemia õppetegevus on üles ehitatud paindlikule õppemoodulite süsteemile. Õppetööd viiakse läbi kõrghariduse esimeses astmes ning kutseõppes. Vastavalt ettevõtete vajadusele teostatakse tegevspetsialistide täiendus- ja ümberõpet.", "Eesti Lennuakadeemia eripära seisneb selles, et õppetööd viivad lepingulistel alustel läbi Eesti ja välismaa lennundusettevõtetes ning kõrgkoolides töötavad vastava eriala kogenud spetsialistid. Sellega garanteeritakse koolitusprotsessi püsiv kvaliteet ja vastavus Rahvusvahelise Tsiviillennunduse Organisatsiooni (ICAO) ning Euroopa Lennundusohutusameti (EASA) nõuetele, mis omakorda tagab akadeemia lõpetanutele head võimalused Eesti ja Euroopa tööturul."],
    location: Location(city: .reola, aadress: "Lennu 40", coordinates: .lennuAkadeemia),
    website: "https://lennuakadeemia.ee/et",
    students: 244,
    contact: ContactInfo(phonenumber: "+3727448100", address: "Lennu 40, Reola", email: "eava@eava.ee"),
    socialMedia: [
        SocialMedia(website: .instagram, link: "https://www.instagram.com/lennuakadeemia/"),
        SocialMedia(website: .facebook, link: "188218447861382"),
        SocialMedia(website: .instagram, link: "https://www.youtube.com/channel/UC0SDn_nyc7rxuOOh1-waFCw" )],
    logo: .lennuAkadeemia,
    image: .lennuAkadeemia,
    internationalStudents: 0,
    worldRanking: 9117,
    vastuvõtt: ["17.06.2021 - 30.06.2021"]
//    education: // + lennuAkadeemiaKutse
)

let lennuakadeemiaEducation: [majorsMinors] = lennuAkadeemiaRaka
