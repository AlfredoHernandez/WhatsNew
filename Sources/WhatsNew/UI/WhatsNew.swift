//
//  Copyright © 2024 Jesús Alfredo Hernández Alarcón. All rights reserved.
//

import SwiftUI

public struct WhatsNew: View {
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var viewModel: WhatsNewViewModel

    init(viewModel: WhatsNewViewModel) {
        self.viewModel = viewModel
    }

    public var body: some View {
        NavigationView {
            VStack(alignment: .center, spacing: 16) {
                Spacer()
                WhatsNewHeaderView(featureName: viewModel.title)
                ScrollView([.vertical], showsIndicators: false) {
                    ForEach(viewModel.features) {
                        WhatsNewItemView($0)
                            .frame(maxWidth: .infinity)
                            .padding(.bottom)
                    }
                }.padding()
                Spacer()
                Button(action: {
                    viewModel.buttonContinueTapped()
                    presentationMode.wrappedValue.dismiss()
                }) {
                    Text(WhatsNewPresenter.continue)
                        .font(.body)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.accentColor)
                        .cornerRadius(8)
                }.padding()
            }
            .padding()
            #if os(iOS)
                .navigationBarTitleDisplayMode(.inline)
            #endif
        }
        #if os(iOS)
        .navigationViewStyle(.stack)
        #endif
    }
}

@available(iOS 17.0, *)
#Preview {
    @Previewable @State var buttonTappedCount = 0
    Text("Button tapped: \(buttonTappedCount)")
    WhatsNew(viewModel: WhatsNewViewModel(
        feature: WhatsNewFeature(
            title: "Maps",
            features: featuresBuilder.build()
        ), didTapContinueButton: { buttonTappedCount += 1 }
    ))
}

// MARK: - SwiftUI testing builder

let featuresBuilder = FeaturesBuilder(
    imageName: "bell",
    title: "New notifications system",
    subtitle: "Siri suggests events foud in Mail, Messages, and Safari, so you can add them easily, such as flight reservations and hotel bookings."
).adding(
    imageName: "clock",
    title: "Time to Leave",
    subtitle: "Calendar uses Apple Maps to look up, location, traffic conditions, and transit options to tell you when it's time to leave."
).adding(
    imageName: "location",
    title: "Location Suggestions",
    subtitle: "Calendar suggests locations based on your past events and significant locations."
)
