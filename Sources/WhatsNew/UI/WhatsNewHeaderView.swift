//
//  Copyright © 2024 Jesús Alfredo Hernández Alarcón. All rights reserved.
//

import SwiftUI

struct WhatsNewHeaderView: View {
    let featureName: String

    public var body: some View {
        VStack {
            Text(WhatsNewPresenter.title)
                .bold()
                .multilineTextAlignment(.center)
                .font(.largeTitle)
                .frame(maxWidth: .infinity)
            Text(WhatsNewPresenter.whatsNew(in: featureName))
                .bold()
                .multilineTextAlignment(.center)
                .font(.largeTitle)
                .frame(maxWidth: .infinity)
        }
    }
}

@available(iOS 17.0, *)
#Preview(traits: .sizeThatFitsLayout) {
    WhatsNewHeaderView(featureName: "Application Name")
}
