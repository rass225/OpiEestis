import SwiftUI

// MARK: - Cells

extension MajorView {
    @ViewBuilder
    func requirementCell(_ requirement: Requirements) -> some View {
        if let header = requirement.header {
            DisclosureGroup(content: {
                HStack(alignment: .top, spacing: 4){
                    Text(.init(requirement.term))
                        .tint(model.college.palette.base)
                    Spacer()
                    if let percentage = requirement.percentage {
                        Text("\(percentage)%")
                            .setFont(.subheadline, .medium, .rounded)
                    }
                }
                .setColor(Theme.Colors.black)
                .setFont(.subheadline, .regular, .rounded)
                .listRowInsets(.init(top: 16, leading: 0, bottom: 16, trailing: 0))
            }, label: {
                Text(.init(header))
                    .setColor(Theme.Colors.black)
                    .setFont(.subheadline, .regular, .rounded)
            })
            .setFont(.subheadline, .semibold, .rounded)
            .tint(model.college.palette.base)
        } else {
            HStack(alignment: .top, spacing: 4){
                Text(.init(requirement.term))
                    .tint(model.college.palette.base)
                Spacer()
                if let percentage = requirement.percentage {
                    Text("\(percentage)%")
                        .setFont(.subheadline, .medium, .rounded)
                }
            }
            .setColor(Theme.Colors.black)
            .setFont(.subheadline, .regular, .rounded)
        }
    }
    
    @ViewBuilder
    func outcomeCell(_ outcome: String) -> some View {
        Text(.init(outcome))
            .setFont(.subheadline, .regular, .rounded)
            .setColor(Theme.Colors.black)
    }
    
    @ViewBuilder
    func personnelCell(_ person: Personnel) -> some View {
        VStack(spacing: 0) {
            if let photo = person.photo, let url = URL(string: photo) {
                if let cachedImage = model.imageCache[url] {
                    Image(uiImage: cachedImage)
                        .resizable()
                        .fill()
                        .frame(width: 80, height: 80, alignment: .top)
                        .clipShape(Circle())
                } else {
                    AsyncImage(
                        url: url,
                        content: { image in
                            image
                                .resizable()
                                .fill()
                                .frame(width: 80, height: 80, alignment: .top)
                                .clipShape(Circle())
                        },
                        placeholder: {
                            placeholderPerson()
                        })
                }
            } else {
                placeholderPerson()
            }

            Text(person.name)
                .lineLimit(nil)
                .setFont(.subheadline, .regular, .rounded)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 8)
                .padding(.top, 8)
            Spacer(minLength: 0)
            
            
            HStack(spacing: 6) {
                if let email = person.email {
                    Theme.Icons.envelope
                        .modifier(ContactButtonModifier(color: model.college.palette.base))
                        .onTapGesture { model.openMail(email) }
                }
                if let phone = person.phone {
                    Theme.Icons.phone
                        .modifier(ContactButtonModifier(color: model.college.palette.base))
                        .onTapGesture { model.openPhone(phone) }
                }
            }
        }
        .padding(.vertical)
        .frame(height: 212)
        .frame(width: 140)
        .background(Color.white)
        .clipShape(.rect(cornerRadius: 12, style: .continuous))
        .contentShape(Rectangle())
        .onTapGesture {
            model.selectedPersonnel = person
        }
    }
    
    @ViewBuilder
    func reviewCell(_ review: Review) -> some View {
        if let text = review.text {
            VStack(alignment: .leading, spacing: 16) {
                HStack {
                    profileImageView(user: review.user)
                    
                    VStack(alignment: .leading, spacing: 4) {
                        HStack(spacing: 2) {
                            Text("\(review.rating)")
                                .setFont(.subheadline, .medium, .rounded)
                            Theme.Icons.star
                                .setColor(model.college.palette.base.gradient)
                                .setFont(.caption, .medium, .rounded)
                                .padding(.trailing, 8)
                        }
                        Text("\(review.date.formatted(date: .abbreviated, time: .omitted))")
                            .setFont(.footnote, .regular, .rounded)
                            .setColor(Theme.Colors.gray)
                    }
                    Spacer()
                }
                Text(text)
                    .setFont(.subheadline, .regular, .rounded)
                    .multilineTextAlignment(.leading)
            }
        }
    }
    
    @ViewBuilder
    func profileImageView(user: FirebaseUser) -> some View {
        if let photoUrl = user.photoUrl, let url = URL(string: photoUrl) {
            if let cachedImage = model.reviewProfileImagesCache[url] {
                Image(uiImage: cachedImage)
                    .resizable()
                    .fill()
                    .frame(width: 40, height: 40, alignment: .top)
                    .clipShape(Circle())
            } else {
                placeholderPerson(size: 40)
            }
        } else {
            placeholderPerson(size: 40)
        }
    }
}
