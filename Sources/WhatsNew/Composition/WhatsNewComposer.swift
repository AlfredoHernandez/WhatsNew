//
//  Copyright © 2025 Jesús Alfredo Hernández Alarcón. All rights reserved.
//

import Foundation

struct WhatsNewState: Equatable {
    var title: String
    var features: [WhatsNewItemViewModel]

    init(title: String, features: [WhatsNewItemViewModel]) {
        self.title = title
        self.features = features
    }
}

@MainActor
public func WhatsNewView(title: String, features: FeaturesBuilder, didTapContinueButton: @escaping () -> Void) -> WhatsNew {
    WhatsNew(
        viewModel: WhatsNewViewModel(
            state: WhatsNewState(
                title: title,
                features: features.build()
            ), didTapContinueButton: didTapContinueButton
        )
    )
}
