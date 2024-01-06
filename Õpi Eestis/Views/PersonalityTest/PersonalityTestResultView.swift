import SwiftUI

extension PersonalityTestView {
    struct PersonalityTestResultView: View {
        @EnvironmentObject var appState: AppState
        @StateObject var model: Model
        
        var body: some View {
            List {
                headerView()
                percentagesView()
                descriptionView()
                strengthsView()
                weaknessesView()
                careersView()
                footer()
            }
            .navigationBarBackButtonHidden(model.showBackButton)
            .toolbar {
                if model.showBackButton {
                    ToolbarItem(placement: .topBarLeading, content: {
                        BackButton(color: Theme.Colors.primary)
                    })
                }
            }
        }
    }
}

extension PersonalityTestView.PersonalityTestResultView {
    @ViewBuilder
    func headerView() -> some View {
        Section(content: titleView, header: titleHeader)
            .maxWidth()
            .listRowBackground(Color.clear)
    }
    
    @ViewBuilder
    func titleView() -> some View {
        HStack(spacing: 3) {
            Text(Theme.Locale.PersonalityTest.Result.youAre)
            Text(model.title)
        }
        .setFont(.title3, .semibold, .rounded)
        .padding(.top)
        .padding(.bottom)
        .listRowInsets(.zero)
    }
    
    @ViewBuilder
    func percentagesView() -> some View {
        Section {
            VStack(spacing: 4) {
                ForEach(model.result.percentages, id: \.self) { item in
                    VStack(spacing: 16) {
                        percentagesHeader(
                            minLabel: item.categoryPair.negativeIndicator,
                            maxLabel: item.categoryPair.positiveIndicator,
                            value: Int(item.dominanceValue)
                        )
                        ProgressView(
                            value: Int(item.dominanceValue),
                            alignment: item.dominantCategory.alignment
                        )
                        .padding(.bottom)
                    }
                    .padding()
                    .maxWidth()
                    .background(Color.white)
                    .clipShape(.rect(cornerRadius: 12, style: .continuous))
                }
            }
        }
        .listRowBackground(Color.clear)
        .listRowInsets(.zero)
    }
    
    @ViewBuilder
    func descriptionView() -> some View {
        Section {
            Text(.init(model.description))
                .setFont(.subheadline, .regular, .rounded)
                .setColor(Theme.Colors.black)
                .maxWidth(alignment: .leading)
        }
    }
    
    @ViewBuilder
    func strengthsView() -> some View {
        Section(content: {
            VStack(spacing: 4) {
                ForEach(model.strengths, id: \.self) { career in
                    HStack {
                        Circle()
                            .fill(Theme.Colors.primary.gradient)
                            .frame(width: 10, height: 10)
                        Text(career)
                            .setFont(.subheadline, .regular, .rounded)
                    }
                    .padding()
                    .maxWidth(alignment: .leading)
                    .background(Color.white)
                    .clipShape(.rect(cornerRadius: 8, style: .continuous))
                }
            }
            .listRowInsets(.zero)
        }, header: strengthsHeader)
        .listRowBackground(Color.clear)
    }
    
    @ViewBuilder
    func weaknessesView() -> some View {
        Section(content: {
            VStack(spacing: 4) {
                ForEach(model.weaknesses, id: \.self) { career in
                    HStack {
                        Circle()
                            .fill(Theme.Colors.primary.gradient)
                            .frame(width: 10, height: 10)
                        Text(career)
                            .setFont(.subheadline, .regular, .rounded)
                    }
                    .padding()
                    .maxWidth(alignment: .leading)
                    .background(Color.white)
                    .clipShape(.rect(cornerRadius: 8, style: .continuous))
                }
            }
            .listRowInsets(.zero)
        }, header: weaknessesHeader)
        .listRowBackground(Color.clear)
    }
    
    @ViewBuilder
    func careersView() -> some View {
        Section(content: {
            VStack(spacing: 4) {
                ForEach(model.careers, id: \.self) { career in
                    HStack {
                        Circle()
                            .fill(Theme.Colors.primary.gradient)
                            .frame(width: 10, height: 10)
                        Text(career)
                            .setFont(.subheadline, .regular, .rounded)
                    }
                    .padding()
                    .maxWidth(alignment: .leading)
                    .background(Color.white)
                    .clipShape(.rect(cornerRadius: 8, style: .continuous))
                }
            }
            .listRowInsets(.zero)
        }, header: careersHeader)
        .listRowBackground(Color.clear)
    }
}

// MARK: - Headers
extension PersonalityTestView.PersonalityTestResultView {
    @ViewBuilder
    func careersHeader() -> some View {
        Text(Theme.Locale.PersonalityTest.Result.careers)
            .textCase(.none)
            .setFont(.title3, .medium, .rounded)
    }
    
    @ViewBuilder
    func weaknessesHeader() -> some View {
        Text(Theme.Locale.PersonalityTest.Result.weaknesses)
            .textCase(.none)
            .setFont(.title3, .medium, .rounded)
    }
    
    @ViewBuilder
    func strengthsHeader() -> some View {
        Text(Theme.Locale.PersonalityTest.Result.strengths)
            .textCase(.none)
            .setFont(.title3, .medium, .rounded)
    }
    
    @ViewBuilder
    func titleHeader() -> some View {
        Text(model.acronym)
            .setFont(.largeTitle, .bold, .rounded)
            .setColor(Theme.Colors.primary.gradient)
            .padding(48)
            .background(Circle().fill(Color.white))
            .overlay(
                Circle()
                    .stroke(Theme.Colors.primary.gradient, lineWidth: 5)
            )
            .padding(.top, 32)
            .listRowInsets(.zero)
    }
}

// MARK: - View Components
extension PersonalityTestView.PersonalityTestResultView {
    struct ProgressView: View {
        let alignment: Alignment
        let progress: Int
        
        init(
            value: Int,
            alignment: Alignment
        ) {
            self.alignment = alignment
            self.progress = min(max(0, value), 100)
        }
        var body: some View {
            GeometryReader { geometry in
                let width = (geometry.size.width * CGFloat(progress)) / 100

                ZStack(alignment: .leading) {
                    bottomCapsule()
                    topCapsule(width: width)
                }
            }
            .frame(height: 20)
        }
        
        @ViewBuilder
        func topCapsule(width: CGFloat) -> some View {
            Capsule(style: .continuous)
                .fill(Theme.Colors.primary.gradient)
                .frame(width: width, height: 20)
                .maxWidth(alignment: alignment)
        }
        
        @ViewBuilder
        func bottomCapsule() -> some View {
            Capsule(style: .continuous)
                .fill(Theme.Colors.primary.gradient.opacity(0.175))
                .frame(height: 20)
                .maxWidth()
        }
    }
    
    @ViewBuilder
    func percentagesHeader(
        minLabel: LocalizedStringKey,
        maxLabel: LocalizedStringKey,
        value: Int
    ) -> some View {
        HStack {
            Text(minLabel)
            Spacer()
            Text(maxLabel)
        }
        .setFont(.body, .regular, .rounded)
        .overlay {
            Text("\(value)%")
                .setFont(.body, .semibold, .rounded)
        }
    }
    
    @ViewBuilder
    func footer() -> some View {
        if model.showFooter {
            Section {
                VStack {
                    Text(Theme.Locale.PersonalityTest.Result.footerTitle)
                        .setColor(.gray)
                    Text(Theme.Locale.PersonalityTest.Result.footerSubtitle)
                        .setColor(Theme.Colors.primary)
                        .contentShape(.rect)
                        .onTapGesture {
                            appState.route(to: .personalityTestHistory)
                        }
                }
                .maxWidth()
                .setFont(.subheadline, .regular, .rounded)
                .listRowBackground(Color.clear)
                .listRowInsets(.zero)
            }
        }
    }
}
