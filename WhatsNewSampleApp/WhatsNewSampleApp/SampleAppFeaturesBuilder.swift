//
//  Copyright © 2023 Jesús Alfredo Hernández Alarcón. All rights reserved.
//

import Foundation
import WhatsNew

let featuresBuilder = FeaturesBuilder(
    imageName: "sparkles",
    title: NSLocalizedString("example_whats_new_item_1_title", comment: "example_whats_new_item_1_title"),
    subtitle: NSLocalizedString("example_whats_new_item_1_brief", comment: "example_whats_new_item_1_brief")
).adding(
    imageName: "moon.fill",
    title: NSLocalizedString("example_whats_new_item_2_title", comment: "example_whats_new_item_2_title"),
    subtitle: NSLocalizedString("example_whats_new_item_2_brief", comment: "example_whats_new_item_2_brief")
).adding(
    imageName: "shippingbox.fill",
    title: NSLocalizedString("example_whats_new_item_3_title", comment: "example_whats_new_item_3_title"),
    subtitle: NSLocalizedString("example_whats_new_item_3_brief", comment: "example_whats_new_item_3_brief")
)
