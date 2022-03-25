//
//  Copyright © 2022 Jesús Alfredo Hernández Alarcón. All rights reserved.
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

// MARK: - SwiftUI testing builder

internal let featuresBuilder = FeaturesBuilder(
    imageName: "bell",
    title: "New notifications system",
    subtitle: "Siri suggests events foud in Mail, Messages, and Safari, so you can add them easily, such as flight reservations and hotel bookings."
).adding(
    imageName: "clock",
    title: "Time to Leave",
    subtitle: "Calendar uses Apple Maps to look up, location, traffic conditions, and transit options to tell you when it's time to leave."
).adding(
    imageName: "location",
    title: "Location Suggestions",
    subtitle: "Calendar suggests locations based on your past events and significant locations."
)
