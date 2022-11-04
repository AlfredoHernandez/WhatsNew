//
//  Copyright © 2022 Jesús Alfredo Hernández Alarcón. All rights reserved.
//

import SwiftUI

class WhatsNewViewModel: ObservableObject {
    @Published var state: WhatsNewState
    private let didTapContinueButton: (() -> Void)?

    init(state: WhatsNewState, didTapContinueButton: (() -> Void)?) {
        self.state = state
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
