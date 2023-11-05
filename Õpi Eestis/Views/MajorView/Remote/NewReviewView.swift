import SwiftUI

extension MajorView {
    @ViewBuilder
    func newReviewView() -> some View {
        VStack {
            VStack(alignment: .leading) {
                ratingsHeader()
                    .padding(.leading, 8)
                RatingView(
                    fillColor: model.college.palette.base,
                    rating: $model.newReviewRating
                )
                .maxWidth()
                .padding()
                .background(Theme.Colors.white)
                .clipShape(.rect(cornerRadius: 12, style: .continuous))
            }
            .padding()
            .padding(.top)
            VStack {
                reviewsHeader()
                    .padding(.leading, 8)
                TextEditor(text: $model.newReviewText)
                    .maxSize()
                    .padding(8)
                    .background(Color.white)
                    .clipShape(.rect(cornerRadius: 12, style: .continuous))
                    .overlay(alignment: .bottomTrailing) {
                        Text("\(model.newReviewText.count)/2000")
                            .setColor(Theme.Colors.gray)
                            .setFont(.footnote, .regular, .rounded)
                            .padding(8)
                    }
                    .onChange(of: model.newReviewText) { newValue in
                        if newValue.count > 2000 {
                            model.newReviewText = String(newValue.prefix(2000))
                        }
                    }
                
            }
            .padding()
            
            Button(action: model.submitReview) {
                Text("Postita")
                    .setFont(.title3, .medium, .rounded)
                    .setColor(Theme.Colors.white)
                    .padding(.vertical)
                    .maxWidth()
                    .background(
                        Capsule(style: .continuous)
                            .fill(model.college.palette.base.gradient))
                    .padding(.horizontal)
            }
            .padding(.bottom)
            .opacity(model.newReviewRating > 0 ? 1 : 0.2)
            .disabled(model.newReviewRating > 0 ? false : true)
                
        }
        .maxSize()
        .background(Theme.Colors.systemGray)
        .presentationDragIndicator(.visible)
        .onAppear {
            if let userReview = model.reviews.first(where: { $0.user == model.user }) {
                if userReview.text == nil {
                    model.newReviewRating = userReview.rating
                }
            }
        }
    }
}
