//
//  Copyright © 2022 Jesús Alfredo Hernández Alarcón. All rights reserved.
//

import SwiftUI

public struct WhatsNew: View {
    private let title: String
    private let features: [WhatsNewItemViewModel]
    private let onDismiss: () -> Void

    public init(title: String, featuresBuilder: () -> [WhatsNewItemViewModel], onDismiss: @escaping () -> Void) {
        self.title = title
        features = featuresBuilder()
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
                WhatsNew(
                    title: "Maps",
                    featuresBuilder: featuresBuilder,
                    onDismiss: {
                        buttonTappedCount += 1
                    }
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
