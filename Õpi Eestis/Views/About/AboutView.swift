import SwiftUI

struct AboutView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        ZStack{
            Color.white.ignoreEdges(edge: .all)
            VStack(spacing: 0){
                ScrollView{
                    ForEach(OEAppearance.Locale.about.description, id: \.self) { item in
                        Text(item)
                            .padding(20)
                            .lineSpacing(5)
                            .multilineTextAlignment(.leading)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }.font(.lightCallout)
                }
                VStack(spacing: 20){
                    Divider()
                    Text(OEAppearance.Locale.about.author)
                    Text(OEAppearance.Locale.about.copyright)
                }.font(.lightCaption)
                .padding(.bottom, 5)
            }
            .setColor(.black)
            .navigationBarTitle(OEAppearance.Locale.title.about, displayMode: .inline)
            .navigationBarBackButtonHidden(true)
            .toolbar{
                AppToolbarItem(.dismiss, color: .oeBlue)
                AppToolbarItem(.title(type: .about), color: .oeBlue)
            }
        }
    }
}
