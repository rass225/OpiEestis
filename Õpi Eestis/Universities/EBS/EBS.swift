var ebs = School(
    name: "Estonian Business School",
    description: "1988. aastal asutatud Tallinnas ja Helsingis tegutsev Estonian Business School (EBS) on vanim äriharidust pakkuv ülikool Baltimaades. Enam kui 1400 tudengiga EBSi eesmärk on anda ettevõtlikele inimestele akadeemilisi teadmisi bakalaureuse-, magistri- ning doktoriõppe tasemel ning edendada praktilisi oskusi teadmiste edukaks rakendamiseks. EBSi missioon on aidata õppuritel seada ning saavutada nende karjääri-, finants- ja elueesmärke läbi kraadi- ja elukestva õppe, kvaliteetse kontaktibaasi ning praktilisel kogemusel põhineva eksperimenteerimise. Aidata organisatsioonidel saavutada nende eesmärke läbi elukestvalt õppiva inimressursi ning EBSi kogunenud ja kaasatud oskusteadmiste rakendamise. EBSi visioon on olla rahvusvahelise tippakrediteeringuga elukestva õppe ja teadmiste jagamise kogukond. EBS kasutab ja arendab õppurite eesmärkide saavutamiseks sobivamaid õppemeetodeid ja -vorme lähtudes oma missioonist. EBS on avalikele ja eraõiguslikele organisatsioonidele partneriks uute toodete, teenuste ja protsesside arendamisel. EBS on kompetentsikeskus töötajate ja meeskondade oskuste ning arengust tuleneva motivatsiooni kasvatamisel.",
    location: Location(
        city: "Tallinn",
        aadress: "A. Lauteri 3",
        coordinates: "https://maps.apple.com/?address=A.%20Lauteri%203,%2010114%20Tallinn,%20Estonia&auid=15147328229495807121&ll=59.432066,24.756594&lsp=9902&q=Estonian%20Business%20School&_ext=ChgKBAgEEHUKBAgFEAMKBAgGEBkKBAgKEAASJikGoKxkvbZNQDGd6cz/b784QDmEddLA47dNQEH/H8qf9cM4QFAE&t=m"),
    website: "https://www.ebs.ee/",
    students: 1400,
    contact: ContactInfo(
        phonenumber: "+3726651340",
        address: "A. Lauteri 3",
        email: "vastuvott@ebs.ee"),
    socialMedia: [
        SocialMedia(website: "Twitter", link: "https://twitter.com/ebsestonia?lang=en"),
        SocialMedia(website: "Facebook", link: "58125552133"),
        SocialMedia(website: "Youtube", link: "https://www.youtube.com/user/ebsikasest/videos"),
        SocialMedia(website: "Instagram", link: "https://www.instagram.com/estonianbusinessschool/")],
    logo: "EBSlogo",
    image: "EBSimage",
    internationalStudents: 162,
    worldRanking: 6808,
    vastuvõtt: ["BA - kuni 05.07.2020", "MA - kuni 12.07.2020"],
    education: ebsBaka + ebsMaka + ebsDoktor
)
