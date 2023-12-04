import SwiftUI
import FirebaseFirestore

extension CollegeDevelopment {
    struct LocalMajorView: View {
        @StateObject var model: Model
        
        var body: some View {
            CollegeMajorView(model: model.modelX)
                .overlay(alignment: .bottom, content: controlPanel)
        }
    }
}

extension CollegeDevelopment.LocalMajorView {
    @ViewBuilder
    func controlPanel() -> some View {
        HStack {
            addButton()
            overrideButton()
        }
    }
    
    @ViewBuilder
    func addButton() -> some View {
        Button(action: model.addMajorToSchool) {
            Text(model.remoteMajor == nil ? "Add to database" : "Already in database")
                .padding()
                .background(model.remoteMajor == nil ? Color.blue : Color.red)
                .setColor(.white)
                .clipShape(.rect(cornerRadius: 8, style: .continuous))
        }
    }
    
    @ViewBuilder
    func overrideButton() -> some View {
        if let remoteMajor = model.remoteMajor {
            Button(action: {
                Task {
                    await model.overrideMajor(majorID: remoteMajor.id)
                }
            }, label: {
                Text("override")
                    .padding()
                    .background(Color.green)
                    .setColor(.white)
                    .clipShape(.rect(cornerRadius: 8, style: .continuous))
            })
        }
    }
}
