//
//  Copyright © 2023 Jesús Alfredo Hernández Alarcón. All rights reserved.
//

import Foundation

public struct FeaturesBuilder {
    private var features = [WhatsNewItemViewModel]()

    private init(features: [WhatsNewItemViewModel]) {
        self.features = features
    }

    public init(imageName: String, title: String, subtitle: String) {
        let feature = WhatsNewItemViewModel(imageName: imageName, title: title, subtitle: subtitle)
        features.append(feature)
    }

    public func adding(imageName: String, title: String, subtitle: String) -> FeaturesBuilder {
        let feature = WhatsNewItemViewModel(imageName: imageName, title: title, subtitle: subtitle)
        return FeaturesBuilder(features: features + [feature])
    }

    public mutating func add(imageName: String, title: String, subtitle: String) {
        self = adding(imageName: imageName, title: title, subtitle: subtitle)
    }

    public func build() -> [WhatsNewItemViewModel] { features }
}
