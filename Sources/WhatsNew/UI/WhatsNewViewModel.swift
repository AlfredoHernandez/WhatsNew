//
//  Copyright © 2024 Jesús Alfredo Hernández Alarcón. All rights reserved.
//

import SwiftUI

class WhatsNewViewModel: ObservableObject {
    @Published var state: WhatsNewFeature
    private let didTapContinueButton: (() -> Void)?

    init(feature: WhatsNewFeature, didTapContinueButton: (() -> Void)?) {
        state = feature
        self.didTapContinueButton = didTapContinueButton
    }

    var title: String {
        state.title
    }

    var features: [WhatsNewItemViewModel] {
        state.features
    }

    func buttonContinueTapped() {
        didTapContinueButton?()
    }
}
