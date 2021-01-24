import SwiftUI

struct ContentView: View {
    @State private var navigationSelectionTag: Int? = 0
    let logo = "Õpi Eestis logo"
    var body: some View {
        NavigationView {
            ZStack{
                NavigationLink(destination: AboutView(), tag: 1, selection: $navigationSelectionTag) {
                    EmptyView()
                }
                NavigationLink(destination: SchoolListView(), tag: 2, selection: $navigationSelectionTag) {
                    EmptyView()
                }
                Color.customBlue.edgesIgnoringSafeArea(.all)
                Color.black.opacity(0.2).edgesIgnoringSafeArea(.all)
                VStack{
                    Image(logo)
                        .resizable()
                        .scaledToFit()
                        .padding()
                        .frame(width: UIScreen.main.bounds.width)
                    Spacer()
                    Spacer()
                    VStack{
                        Button(action: { navigationSelectionTag = 2 }) {
                            VStack{
                                    Text("Vaata").padding(.bottom, 2)
                                    Text("ülikoole")
                            }.frame(width: 150, height: 150)
                                .foregroundColor(Color.black)
                                .background(Color.white)
                                .cornerRadius(150)
                                .shadow(color: Color.black.opacity(0.4), radius: 8, x: 0, y: 0)
                            .font(Font.callout.weight(.regular))
                        }
                        Spacer()
                    }
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: UIScreen.main.bounds.height / 2.5)
                    .padding(.bottom, 10)
                }
                
            }.navigationBarItems(trailing:
            HStack{
                Button(action: { navigationSelectionTag = 1 }) {
                    Image(systemName: "info.circle")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .font(.system(size: 20, weight: .medium))
                        .foregroundColor(Color.white)
                }
            })
        }
    }
}
func makeJSON() {
    let documentsDirectoryPathString = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
    let documentsDirectoryPath = NSURL(string: documentsDirectoryPathString)!

    let jsonFilePath = documentsDirectoryPath.appendingPathComponent("test.json")
    let fileManager = FileManager.default
    var isDirectory: ObjCBool = false

    // creating a .json file in the Documents folder
    if !fileManager.fileExists(atPath: (jsonFilePath?.absoluteString)!, isDirectory: &isDirectory) {
        let created = fileManager.createFile(atPath: jsonFilePath!.path, contents: nil, attributes: nil)
        if created {
            print("File created ")
        } else {
            print("Couldn't create file for some reason")
        }
    } else {
        print("File already exists")
    }

    // creating an array of test data
    var numbers = [String]()
    for i in 0..<100 {
        numbers.append("Test\(i)")
    }

    // creating JSON out of the above array
    var jsonData: NSData!
    do {
        jsonData = try JSONSerialization.data(withJSONObject: numbers, options: JSONSerialization.WritingOptions()) as NSData
        let jsonString = String(data: jsonData as Data, encoding: String.Encoding.utf8)
        print(jsonString as Any)
    } catch let error as NSError {
        print("Array to JSON conversion failed: \(error.localizedDescription)")
    }

    // Write that JSON to the file created earlier
    //    let jsonFilePath = documentsDirectoryPath.appendingPathComponent("test.json")
    do {
        let file = try FileHandle(forWritingTo: jsonFilePath!)
        file.write(jsonData as Data)
        print("JSON data was written to teh file successfully!")
    } catch let error as NSError {
        print("Couldn't write to file: \(error.localizedDescription)")
    }
}

