//
//  Copyright © 2022 Jesús Alfredo Hernández Alarcón. All rights reserved.
//

import Foundation

public struct WhatsNewItemViewModel: Identifiable {
    public var id: String { imageName + title + subtitle }
    let imageName: String
    let title: String
    let subtitle: String

    internal init(imageName: String, title: String, subtitle: String) {
        self.imageName = imageName
        self.title = title
        self.subtitle = subtitle
    }
}
