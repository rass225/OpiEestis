import SwiftUI

extension MajorView {
    @ViewBuilder
    func personDetailView(_ person: Personnel) -> some View {
        GeometryReader { geo in
            VStack {
                VStack(spacing: 0) {
                    if let photo = person.photo, let url = URL(string: photo) {
                        if let cachedImage = model.imageCache[url] {
                            if easterEggPresented {
                                Image("Gollum")
                                    .resizable()
                                    .fill()
                                    .frame(width: 160, height: 160, alignment: .top)
                                    .clipShape(Circle())
                                    .onTapGesture {
                                        easterEggPresented.toggle()
                                    }
                            } else {
                                Image(uiImage: cachedImage)
                                    .resizable()
                                    .fill()
                                    .frame(width: 160, height: 160, alignment: .top)
                                    .clipShape(Circle())
                                    .onTapGesture(count: 2, perform: {
                                        if person.name == "Kaire Kollom" {
                                            easterEggPresented.toggle()
                                        }
                                    })
                            }
                        } else {
                            AsyncImage(
                                url: url,
                                content: { image in
                                    image
                                        .resizable()
                                        .fill()
                                        .frame(width: 160, height: 160, alignment: .top)
                                        .clipShape(Circle())
                                },
                                placeholder: {
                                    placeholderPerson(size: 160, font: .largeTitle)
                                })
                        }
                    } else {
                        placeholderPerson(size: 160, font: .system(size: 75))
                    }
                }
                .padding(.top, geo.size.height / 6)
                .padding(.bottom, 8)
                
                VStack(alignment: .center) {
                    Text(person.name)
                        .setFont(.title, .regular, .rounded)
                    Text(person.title)
                        .setColor(.gray)
                        .setFont(.subheadline, .regular, .rounded)
                        .multilineTextAlignment(.center)
                }
                .maxWidth()
                .padding(.horizontal)
                .padding(.bottom)
                
                HStack(spacing: 16) {
                    if let email = person.email {
                        Theme.Icons.envelope
                            .modifier(ContactButtonModifier(
                                color: model.college.palette.base,
                                font: .title3
                            ))
                            .onTapGesture {
                                model.openMail(email)
                            }
                    }
                    if let phone = person.phone {
                        Theme.Icons.phone
                            .modifier(ContactButtonModifier(
                                color: model.college.palette.base,
                                font: .title3
                            ))
                            .onTapGesture {
                                model.openPhone(phone)
                            }
                    }
                }
                Spacer()
            }
            .maxSize()
        }
        .presentationDetents([.medium])
        .presentationDragIndicator(.visible)
        .presentationCornerRadius(16)
    }
}
