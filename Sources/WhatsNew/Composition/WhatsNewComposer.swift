//
//  File.swift
//  
//
//  Created by Jesús Alfredo Hernández Alarcón on 04/05/22.
//

import Foundation

public struct WhatsNewState {
    var title: String
    var features: [WhatsNewItemViewModel]
    var onDismiss: () -> Void

    public init(title: String, features: [WhatsNewItemViewModel], onDismiss: @escaping () -> Void) {
        self.title = title
        self.features = features
        self.onDismiss = onDismiss
    }
}

public enum WhatsNewAction {
    case buttonContinueTapped
}

public let whatsNewReducer: Reducer<WhatsNewState, WhatsNewAction> = { state, action in
    switch action {
    case .buttonContinueTapped:
        return [.fireAndForget(work: state.onDismiss)]
    }
}

public func whatsNew(with title: String, features: FeaturesBuilder, onDismiss: @escaping () -> Void) -> WhatsNew {
    WhatsNew(
        store: Store(
            initialValue: WhatsNewState(
                title: title,
                features: features.build(),
                onDismiss: onDismiss
            ),
            reducer: whatsNewReducer
        )
    )
}
