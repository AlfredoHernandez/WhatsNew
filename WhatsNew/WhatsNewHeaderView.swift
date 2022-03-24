//
//  Copyright © 2022 Jesús Alfredo Hernández Alarcón. All rights reserved.
//

import SwiftUI

struct WhatsNewHeaderView: View {
    let featureName: String

    public var body: some View {
        VStack {
            Text("What's New")
                .bold()
                .font(.title)
                .frame(maxWidth: .infinity)
            Text("in \(featureName)")
                .bold()
                .font(.title)
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
