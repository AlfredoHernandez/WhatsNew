//
//  File.swift
//  
//
//  Created by Jesús Alfredo Hernández Alarcón on 04/05/22.
//

import Foundation
import ComposableArchitecture

public struct WhatsNewState: Equatable {
    var title: String
    var features: [WhatsNewItemViewModel]

    public init(title: String, features: [WhatsNewItemViewModel]) {
        self.title = title
        self.features = features
    }
}

public enum WhatsNewAction: Equatable {
    case buttonContinueTapped
}

struct WhatsNewEnvironment {
    let onDismiss: () -> Void
}

let whatsNewReducer = AnyReducer<WhatsNewState, WhatsNewAction, WhatsNewEnvironment> { state, action, environment in
    switch action {
    case .buttonContinueTapped:
        return .fireAndForget {
            environment.onDismiss()
        }
    }
}

public func WhatsNewView(title: String, features: FeaturesBuilder, onDismiss: @escaping () -> Void) -> WhatsNew {
    WhatsNew(
        store: Store(
            initialState: WhatsNewState(
                title: title,
                features: features.build()
            ),
            reducer: whatsNewReducer,
            environment: WhatsNewEnvironment(onDismiss: onDismiss)
        )
    )
}
