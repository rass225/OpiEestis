
import SwiftUI

struct DiscoveryView: View {
    @State var city = ""
    @State var degree = ""
    @State var type = ""
//    @State var
    @State var didSelectHello = false
    var body: some View {
        ZStack{
            Color.whiteDim.edgesIgnoringSafeArea(.all)
            Form{
                Section(header: Text("Linn")){
                    DisclosureGroup(city.isEmpty ? "Vali linn..." : city, isExpanded: $didSelectHello) {
                        ForEach(fetchAllCities(), id: \.self) { item in
                            Button(action: {
                                city = item
                                didSelectHello.toggle()
                            }) {
                                Text(item).foregroundColor(Color.black)
                            }
                        }
                    }
                }
            }
        }.environment(\.colorScheme, .light)
    }
}

extension DiscoveryView {
    func fetchAllCities() -> [String] {
        var allCities: [String] = []
        for school in schools {
            let education = school.education
            var allLocations: [String] = []
            
            for major in education {
                for item in major.studyLocation {
                    allLocations.append(item)
                }
            }
            
            let differentLocations = Array(allLocations.unique)
            for location in differentLocations {
                allCities.append(location)
            }
        }
        let differentCities = allCities.unique
        return differentCities
    }
}
