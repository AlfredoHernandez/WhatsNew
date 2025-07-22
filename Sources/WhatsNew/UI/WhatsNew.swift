//
//  Copyright © 2025 Jesús Alfredo Hernández Alarcón. All rights reserved.
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

struct WhatsNew_Previews: PreviewProvider {
    private struct WhatsNewWrapped: View {
        @State var buttonTappedCount = 0

        var body: some View {
            VStack {
                Text("Button tapped: \(buttonTappedCount)")
                WhatsNew(
                    viewModel: WhatsNewViewModel(
                        state: WhatsNewState(
                            title: "Maps",
                            features: featuresBuilder.build()
                        ), didTapContinueButton: { buttonTappedCount += 1 }
                    )
                )
            }
        }
    }

    static var previews: some View {
        Group {
            WhatsNewWrapped()
            WhatsNewWrapped()
                .preferredColorScheme(.dark)
        }
    }
}

// MARK: - SwiftUI testing builder

nonisolated(unsafe) let featuresBuilder = FeaturesBuilder(
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
