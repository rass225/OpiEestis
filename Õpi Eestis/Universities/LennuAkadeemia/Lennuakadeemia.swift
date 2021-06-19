var lennuakadeemia = School(
    name: .lennuakadeemia,
    description: ["Eesti Lennuakadeemia on riiklik rakenduskõrgkool, kus koolitatakse hinnatud spetsialiste Eesti lennundusettevõtetele. 1993. aastal asutatud ja 2008. aastal Eesti Lennuakadeemiaks ümber nimetatud õppeasutusest on tänaseks saanud kõige populaarsem kõrgkool Eesti noorte seas. 2018. aastal oli kõrgkoolide ja ülikoolide seas kõige suurem konkurents just Eesti Lennuakadeemiasse õppimiseks.", "Lennuakadeemia unikaalne ning praktiline haridus ja kaasaegne õppekeskkond motiveerivad üha enam noori lennunduse vastu huvi tundma. Akadeemia õppeprotsessis rakendatakse Eesti rakenduskõrghariduse ja rahvusvahelisi lennundusalaseid kõrgeid standardeid.", "Akadeemia õppetegevus on üles ehitatud paindlikule õppemoodulite süsteemile. Õppetööd viiakse läbi kõrghariduse esimeses astmes ning kutseõppes. Vastavalt ettevõtete vajadusele teostatakse tegevspetsialistide täiendus- ja ümberõpet.", "Eesti Lennuakadeemia eripära seisneb selles, et õppetööd viivad lepingulistel alustel läbi Eesti ja välismaa lennundusettevõtetes ning kõrgkoolides töötavad vastava eriala kogenud spetsialistid. Sellega garanteeritakse koolitusprotsessi püsiv kvaliteet ja vastavus Rahvusvahelise Tsiviillennunduse Organisatsiooni (ICAO) ning Euroopa Lennundusohutusameti (EASA) nõuetele, mis omakorda tagab akadeemia lõpetanutele head võimalused Eesti ja Euroopa tööturul."],
    location: Location(
        city: "Reola",
        aadress: "Lennu 40",
        coordinates: "https://maps.apple.com/?address=Lennu,%2061707%20%C3%9Clenurme,%20Estonia&auid=17520612382695991048&ll=58.310812,26.693838&lsp=9902&q=Estonian%20Aviation%20Academy&_ext=ChgKBAgEEHUKBAgFEAMKBAgGEBkKBAgKEAASJCnTBJg/qydNQDFr39lML7E6QDkfydIe5idNQEEx2w5xD7I6QA%3D%3D&t=m"),
    website: "https://lennuakadeemia.ee/et",
    students: 244,
    contact: ContactInfo(phonenumber: "+3727448100", address: "Lennu 40, Reola", email: "eava@eava.ee"),
    socialMedia: [
        SocialMedia(website: "Instagram", link: "https://www.instagram.com/lennuakadeemia/"),
        SocialMedia(website: "Facebook", link: "188218447861382"),
        SocialMedia(website: "Youtube", link: "https://www.youtube.com/channel/UC0SDn_nyc7rxuOOh1-waFCw" )],
    logo: "ELlogo5",
    image: "EL",
    internationalStudents: 0,
    worldRanking: 9117,
    vastuvõtt: ["17.06.2021 - 30.06.2021"],
    education: lennuAkadeemiaRaka // + lennuAkadeemiaKutse
)
