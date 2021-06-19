
import SwiftUI

struct DiscoveryView: View {
    let schools = Universities()
    @State var city = ""
    @State var degree = ""
    @State var type = ""
    @State var didSelectCity = false
    @State var didSelectLevel = false
    var body: some View {
        ZStack{
            Color.whiteDim1.ignoreEdges(edge: .all)
            Form{
                Section(header: Text("Linn")){
                    DisclosureGroup(city.isEmpty ? "Vali linn..." : city, isExpanded: $didSelectCity) {
                        ForEach(fetchAllCities(), id: \.self) { item in
                            Button(action: { cityAction(selectedCity: item) }) {
                                Text(item).foregroundColor(Color.black)
                            }
                        }
                    }
                }
                Section(header: Text("Õppeaste")) {
                    DisclosureGroup(degree.isEmpty ? "Vali õppeaste..." : degree, isExpanded: $didSelectLevel) {
                        ForEach(fetchAllCities(), id: \.self) { item in
                            Button(action: { cityAction(selectedCity: item) }) {
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
        for school in schools.schools {
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
        return differentCities.sorted(by: { $0 < $1 })
    }
    
    func cityAction(selectedCity: String) {
        city = selectedCity
        didSelectCity.toggle()
    }
}
