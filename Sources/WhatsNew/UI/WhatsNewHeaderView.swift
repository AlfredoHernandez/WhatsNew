//
//  Copyright © 2023 Jesús Alfredo Hernández Alarcón. All rights reserved.
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

struct WhatsNewHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        WhatsNewHeaderView(featureName: "Application Name")
            .previewLayout(.sizeThatFits)
    }
}
