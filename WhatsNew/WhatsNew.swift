//
//  Copyright © 2022 Jesús Alfredo Hernández Alarcón. All rights reserved.
//

import SwiftUI

public struct WhatsNew: View {
    private let title: String
    private let features: [WhatsNewItemViewModel]
    private let onDismiss: () -> Void

    public init(title: String, features: [WhatsNewItemViewModel], onDismiss: @escaping () -> Void) {
        self.title = title
        self.features = features
        self.onDismiss = onDismiss
    }

    public var body: some View {
        VStack(alignment: .center, spacing: 16) {
            Spacer()
            WhatsNewHeaderView(featureName: title)
            ForEach(features) {
                WhatsNewItemView($0)
                    .frame(maxWidth: .infinity)
            }
            Spacer()
            Button(action: onDismiss) {
                Text("Continue")
                    .font(.body)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.accentColor)
                    .cornerRadius(8)
            }.padding()
        }.padding()
    }
}

struct WhatsNew_Previews: PreviewProvider {
    private struct WhatsNewWrapped: View {
        @State var buttonTappedCount = 0

        var body: some View {
            VStack {
                Text("Button tapped: \(buttonTappedCount)")
                WhatsNew(title: "Maps", features: [
                    .init(
                        imageName: "bell",
                        title: "New notifications system",
                        subtitle: "Siri suggests events foud in Mail, Messages, and Safari, so you can add them easily, such as flight reservations and hotel bookings."
                    ),
                    .init(
                        imageName: "clock",
                        title: "Time to Leave",
                        subtitle: "Calendar uses Apple Maps to look up, location, traffic conditions, and transit options to tell you when it's time to leave."
                    ),
                    .init(
                        imageName: "location",
                        title: "Location Suggestions",
                        subtitle: "Calendar suggests locations based on your past events and significant locations."
                    ),
                ], onDismiss: {
                    buttonTappedCount += 1
                })
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
