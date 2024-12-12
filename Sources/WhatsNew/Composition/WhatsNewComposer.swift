//
//  Copyright © 2024 Jesús Alfredo Hernández Alarcón. All rights reserved.
//

import Foundation

struct WhatsNewFeature: Equatable {
    var title: String
    var features: [WhatsNewItemViewModel]

    public init(title: String, features: [WhatsNewItemViewModel]) {
        self.title = title
        self.features = features
    }
}

public func WhatsNewView(title: String, features: FeaturesBuilder, didTapContinueButton: @escaping () -> Void) -> WhatsNew {
    WhatsNew(
        viewModel: WhatsNewViewModel(
            feature: WhatsNewFeature(
                title: title,
                features: features.build()
            ), didTapContinueButton: didTapContinueButton
        )
    )
}
