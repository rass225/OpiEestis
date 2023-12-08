import Foundation

struct Nationality: Codable, Equatable, Hashable {
    let name: String
    let symbol: String
    
    static let nations: [Nationality] = [
        // Countries starting with 'A'
        .init(name: "Afghanistan", symbol: "🇦🇫"),
        .init(name: "Albania", symbol: "🇦🇱"),
        .init(name: "Algeria", symbol: "🇩🇿"),
        .init(name: "Andorra", symbol: "🇦🇩"),
        .init(name: "Angola", symbol: "🇦🇴"),
        .init(name: "Antigua and Barbuda", symbol: "🇦🇬"),
        .init(name: "Argentina", symbol: "🇦🇷"),
        .init(name: "Armenia", symbol: "🇦🇲"),
        .init(name: "Australia", symbol: "🇦🇺"),
        .init(name: "Austria", symbol: "🇦🇹"),
        .init(name: "Azerbaijan", symbol: "🇦🇿"),
        
        // Countries starting with 'B'
        .init(name: "Bahamas", symbol: "🇧🇸"),
        .init(name: "Bahrain", symbol: "🇧🇭"),
        .init(name: "Bangladesh", symbol: "🇧🇩"),
        .init(name: "Barbados", symbol: "🇧🇧"),
        .init(name: "Belarus", symbol: "🇧🇾"),
        .init(name: "Belgium", symbol: "🇧🇪"),
        .init(name: "Belize", symbol: "🇧🇿"),
        .init(name: "Benin", symbol: "🇧🇯"),
        .init(name: "Bhutan", symbol: "🇧🇹"),
        .init(name: "Bolivia", symbol: "🇧🇴"),
        .init(name: "Bosnia and Herzegovina", symbol: "🇧🇦"),
        .init(name: "Botswana", symbol: "🇧🇼"),
        .init(name: "Brazil", symbol: "🇧🇷"),
        .init(name: "Brunei", symbol: "🇧🇳"),
        .init(name: "Bulgaria", symbol: "🇧🇬"),
        .init(name: "Burkina Faso", symbol: "🇧🇫"),
        .init(name: "Burundi", symbol: "🇧🇮"),
        
        // Countries starting with 'C'
        .init(name: "Cabo Verde", symbol: "🇨🇻"),
        .init(name: "Cambodia", symbol: "🇰🇭"),
        .init(name: "Cameroon", symbol: "🇨🇲"),
        .init(name: "Canada", symbol: "🇨🇦"),
        .init(name: "Central African Republic", symbol: "🇨🇫"),
        .init(name: "Chad", symbol: "🇹🇩"),
        .init(name: "Chile", symbol: "🇨🇱"),
        .init(name: "China", symbol: "🇨🇳"),
        .init(name: "Colombia", symbol: "🇨🇴"),
        .init(name: "Comoros", symbol: "🇰🇲"),
        .init(name: "Congo (Congo-Brazzaville)", symbol: "🇨🇬"),
        .init(name: "Costa Rica", symbol: "🇨🇷"),
        .init(name: "Croatia", symbol: "🇭🇷"),
        .init(name: "Cuba", symbol: "🇨🇺"),
        .init(name: "Cyprus", symbol: "🇨🇾"),
        .init(name: "Czechia (Czech Republic)", symbol: "🇨🇿"),
        
        // Countries starting with 'D'
        .init(name: "Democratic Republic of the Congo", symbol: "🇨🇩"),
        .init(name: "Denmark", symbol: "🇩🇰"),
        .init(name: "Djibouti", symbol: "🇩🇯"),
        .init(name: "Dominica", symbol: "🇩🇲"),
        .init(name: "Dominican Republic", symbol: "🇩🇴"),
        
        // Countries starting with 'E'
        .init(name: "Ecuador", symbol: "🇪🇨"),
        .init(name: "Egypt", symbol: "🇪🇬"),
        .init(name: "El Salvador", symbol: "🇸🇻"),
        .init(name: "Equatorial Guinea", symbol: "🇬🇶"),
        .init(name: "Eritrea", symbol: "🇪🇷"),
        .init(name: "Estonia", symbol: "🇪🇪"),
        .init(name: "Eswatini", symbol: "🇸🇿"),
        .init(name: "Ethiopia", symbol: "🇪🇹"),
        
        // Countries starting with 'F'
        .init(name: "Fiji", symbol: "🇫🇯"),
        .init(name: "Finland", symbol: "🇫🇮"),
        .init(name: "France", symbol: "🇫🇷"),
        
        // Countries starting with 'G'
        .init(name: "Gabon", symbol: "🇬🇦"),
        .init(name: "Gambia", symbol: "🇬🇲"),
        .init(name: "Georgia", symbol: "🇬🇪"),
        .init(name: "Germany", symbol: "🇩🇪"),
        .init(name: "Ghana", symbol: "🇬🇭"),
        .init(name: "Greece", symbol: "🇬🇷"),
        .init(name: "Grenada", symbol: "🇬🇩"),
        .init(name: "Guatemala", symbol: "🇬🇹"),
        .init(name: "Guinea", symbol: "🇬🇳"),
        .init(name: "Guinea-Bissau", symbol: "🇬🇼"),
        .init(name: "Guyana", symbol: "🇬🇾"),
        
        // Countries starting with 'H'
        .init(name: "Haiti", symbol: "🇭🇹"),
        .init(name: "Honduras", symbol: "🇭🇳"),
        .init(name: "Hungary", symbol: "🇭🇺"),
        
        // Countries starting with 'I'
        .init(name: "Iceland", symbol: "🇮🇸"),
        .init(name: "India", symbol: "🇮🇳"),
        .init(name: "Indonesia", symbol: "🇮🇩"),
        .init(name: "Iran", symbol: "🇮🇷"),
        .init(name: "Iraq", symbol: "🇮🇶"),
        .init(name: "Ireland", symbol: "🇮🇪"),
        .init(name: "Israel", symbol: "🇮🇱"),
        .init(name: "Italy", symbol: "🇮🇹"),
        
        // Countries starting with 'J'
        .init(name: "Jamaica", symbol: "🇯🇲"),
        .init(name: "Japan", symbol: "🇯🇵"),
        .init(name: "Jordan", symbol: "🇯🇴"),
        
        // Countries starting with 'K'
        .init(name: "Kazakhstan", symbol: "🇰🇿"),
        .init(name: "Kenya", symbol: "🇰🇪"),
        .init(name: "Kiribati", symbol: "🇰🇮"),
        .init(name: "Kuwait", symbol: "🇰🇼"),
        .init(name: "Kyrgyzstan", symbol: "🇰🇬"),
        
        // Countries starting with 'L'
        .init(name: "Laos", symbol: "🇱🇦"),
        .init(name: "Latvia", symbol: "🇱🇻"),
        .init(name: "Lebanon", symbol: "🇱🇧"),
        .init(name: "Lesotho", symbol: "🇱🇸"),
        .init(name: "Liberia", symbol: "🇱🇷"),
        .init(name: "Libya", symbol: "🇱🇾"),
        .init(name: "Liechtenstein", symbol: "🇱🇮"),
        .init(name: "Lithuania", symbol: "🇱🇹"),
        .init(name: "Luxembourg", symbol: "🇱🇺"),
        
        // Countries starting with 'M'
        .init(name: "Madagascar", symbol: "🇲🇬"),
        .init(name: "Malawi", symbol: "🇲🇼"),
        .init(name: "Malaysia", symbol: "🇲🇾"),
        .init(name: "Maldives", symbol: "🇲🇻"),
        .init(name: "Mali", symbol: "🇲🇱"),
        .init(name: "Malta", symbol: "🇲🇹"),
        .init(name: "Marshall Islands", symbol: "🇲🇭"),
        .init(name: "Mauritania", symbol: "🇲🇷"),
        .init(name: "Mauritius", symbol: "🇲🇺"),
        .init(name: "Mexico", symbol: "🇲🇽"),
        .init(name: "Micronesia", symbol: "🇫🇲"),
        .init(name: "Moldova", symbol: "🇲🇩"),
        .init(name: "Monaco", symbol: "🇲🇨"),
        .init(name: "Mongolia", symbol: "🇲🇳"),
        .init(name: "Montenegro", symbol: "🇲🇪"),
        .init(name: "Morocco", symbol: "🇲🇦"),
        .init(name: "Mozambique", symbol: "🇲🇿"),
        .init(name: "Myanmar (Burma)", symbol: "🇲🇲"),
        
        // Countries starting with 'N'
        .init(name: "Namibia", symbol: "🇳🇦"),
        .init(name: "Nauru", symbol: "🇳🇷"),
        .init(name: "Nepal", symbol: "🇳🇵"),
        .init(name: "Netherlands", symbol: "🇳🇱"),
        .init(name: "New Zealand", symbol: "🇳🇿"),
        .init(name: "Nicaragua", symbol: "🇳🇮"),
        .init(name: "Niger", symbol: "🇳🇪"),
        .init(name: "Nigeria", symbol: "🇳🇬"),
        .init(name: "North Korea", symbol: "🇰🇵"),
        .init(name: "North Macedonia", symbol: "🇲🇰"),
        .init(name: "Norway", symbol: "🇳🇴"),
        
        // Countries starting with 'O'
        .init(name: "Oman", symbol: "🇴🇲"),
        
        // Countries starting with 'P'
        .init(name: "Pakistan", symbol: "🇵🇰"),
        .init(name: "Palau", symbol: "🇵🇼"),
        .init(name: "Palestine", symbol: "🇵🇸"),
        .init(name: "Panama", symbol: "🇵🇦"),
        .init(name: "Papua New Guinea", symbol: "🇵🇬"),
        .init(name: "Paraguay", symbol: "🇵🇾"),
        .init(name: "Peru", symbol: "🇵🇪"),
        .init(name: "Philippines", symbol: "🇵🇭"),
        .init(name: "Poland", symbol: "🇵🇱"),
        .init(name: "Portugal", symbol: "🇵🇹"),
        
        // Countries starting with 'Q'
        .init(name: "Qatar", symbol: "🇶🇦"),
        
        // Countries starting with 'R'
        .init(name: "Romania", symbol: "🇷🇴"),
        .init(name: "Rwanda", symbol: "🇷🇼"),
        
        // Countries starting with 'S'
        .init(name: "Saint Kitts and Nevis", symbol: "🇰🇳"),
        .init(name: "Saint Lucia", symbol: "🇱🇨"),
        .init(name: "Saint Vincent and the Grenadines", symbol: "🇻🇨"),
        .init(name: "Samoa", symbol: "🇼🇸"),
        .init(name: "San Marino", symbol: "🇸🇲"),
        .init(name: "Sao Tome and Principe", symbol: "🇸🇹"),
        .init(name: "Saudi Arabia", symbol: "🇸🇦"),
        .init(name: "Senegal", symbol: "🇸🇳"),
        .init(name: "Serbia", symbol: "🇷🇸"),
        .init(name: "Seychelles", symbol: "🇸🇨"),
        .init(name: "Sierra Leone", symbol: "🇸🇱"),
        .init(name: "Singapore", symbol: "🇸🇬"),
        .init(name: "Slovakia", symbol: "🇸🇰"),
        .init(name: "Slovenia", symbol: "🇸🇮"),
        .init(name: "Solomon Islands", symbol: "🇸🇧"),
        .init(name: "Somalia", symbol: "🇸🇴"),
        .init(name: "South Africa", symbol: "🇿🇦"),
        .init(name: "South Korea", symbol: "🇰🇷"),
        .init(name: "South Sudan", symbol: "🇸🇸"),
        .init(name: "Spain", symbol: "🇪🇸"),
        .init(name: "Sri Lanka", symbol: "🇱🇰"),
        .init(name: "Sudan", symbol: "🇸🇩"),
        .init(name: "Suriname", symbol: "🇸🇷"),
        .init(name: "Sweden", symbol: "🇸🇪"),
        .init(name: "Switzerland", symbol: "🇨🇭"),
        .init(name: "Syria", symbol: "🇸🇾"),
        
        // Countries starting with 'T'
        .init(name: "Tajikistan", symbol: "🇹🇯"),
        .init(name: "Tanzania", symbol: "🇹🇿"),
        .init(name: "Thailand", symbol: "🇹🇭"),
        .init(name: "Timor-Leste", symbol: "🇹🇱"),
        .init(name: "Togo", symbol: "🇹🇬"),
        .init(name: "Tonga", symbol: "🇹🇴"),
        .init(name: "Trinidad and Tobago", symbol: "🇹🇹"),
        .init(name: "Tunisia", symbol: "🇹🇳"),
        .init(name: "Turkey", symbol: "🇹🇷"),
        .init(name: "Turkmenistan", symbol: "🇹🇲"),
        .init(name: "Tuvalu", symbol: "🇹🇻"),
        
        // Countries starting with 'U'
        .init(name: "Uganda", symbol: "🇺🇬"),
        .init(name: "Ukraine", symbol: "🇺🇦"),
        .init(name: "United Arab Emirates", symbol: "🇦🇪"),
        .init(name: "United Kingdom", symbol: "🇬🇧"),
        .init(name: "United States", symbol: "🇺🇸"),
        .init(name: "Uruguay", symbol: "🇺🇾"),
        .init(name: "Uzbekistan", symbol: "🇺🇿"),
        
        // Countries starting with 'V'
        .init(name: "Vanuatu", symbol: "🇻🇺"),
        .init(name: "Vatican City", symbol: "🇻🇦"),
        .init(name: "Venezuela", symbol: "🇻🇪"),
        .init(name: "Vietnam", symbol: "🇻🇳"),
        
        // Countries starting with 'W'
        .init(name: "Western Sahara", symbol: "🇪🇭"),
        
        // Countries starting with 'Y'
        .init(name: "Yemen", symbol: "🇾🇪"),
        
        // Countries starting with 'Z'
        .init(name: "Zambia", symbol: "🇿🇲"),
        .init(name: "Zimbabwe", symbol: "🇿🇼")
    ]
}

