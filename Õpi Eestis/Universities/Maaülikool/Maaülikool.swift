var maaülikool = School(
    name: "Eesti Maaülikool",
    description: "Eesti Maaülikool kannab praegust nime 2005. aastast. Ülikooli juured ulatuvad aastasse 1873, mil Tartus alustas tööd veterinaariakool. Aastatel 1951-1991 kandis kõrgkool Eesti Põllumajanduse Akadeemia ning aastatel 1991-2005 Eesti Põllumajandusülikooli nime. Eesti Maaülikool on ainus ülikool Eestis, mis kuulub põllumajanduse ja metsanduse valdkonnas maailma 100 parima ülikooli edetabelisse, olles 51.-100. kohal.  Maaülikool kuulub taime- ja loomateaduste ning keskkonna ja ökoloogia valdkonnas maailmas 1% enim viidatud teadusasutuste hulka.",
    location: Location(city: "Tartu", aadress: "Kreutzwaldi 1", coordinates: "https://maps.apple.com/?address=F.%20R.%20Kreutzwaldi%201A,%2051014%20Tartu,%20Estonia&auid=5131150893300068101&ll=58.388475,26.697252&lsp=9902&q=Maa%C3%BClikooli%20Peahoone&_ext=ChgKBAgEEHUKBAgFEAMKBAgGEBkKBAgKEAASJinw/tNZIzFNQDFDHGBmMbA6QDlu1Pm1STJNQEHtGD2SlLQ6QFAE&t=m"),
    website: "https://www.emu.ee/",
    students: 2900,
    contact: ContactInfo(phonenumber: "+3727313001", address: "Kreutzwaldi 1", email: "info@emu.ee"),
    socialMedia: [
        SocialMedia(website: "Twitter", link: "https://twitter.com/maaylikool?lang=en"),
        SocialMedia(website: "Facebook", link: "319434497842"),
        SocialMedia(website: "Youtube", link: "https://www.youtube.com/user/EestiMaaulikool"),
        SocialMedia(website: "Instagram", link: "https://www.instagram.com/maaylikool/?hl=en")
    ],
    logo: "EMÜ",
    image: "EMÜimage",
    internationalStudents: 120,
    worldRanking: 1906,
    vastuvõtt: ["25.06 - 06.07.2020"],
    education: maaülikoolBaka + maaülikoolMaka + maaülikoolRaka + maaülikoolInter + maaülikoolDoktor
)
