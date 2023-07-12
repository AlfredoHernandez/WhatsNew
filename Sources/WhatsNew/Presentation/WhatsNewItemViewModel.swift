//
//  Copyright © 2023 Jesús Alfredo Hernández Alarcón. All rights reserved.
//

import Foundation

public struct WhatsNewItemViewModel: Equatable, Identifiable {
    public var id: String { imageName + title + subtitle }
    let imageName: String
    let title: String
    let subtitle: String

    init(imageName: String, title: String, subtitle: String) {
        self.imageName = imageName
        self.title = title
        self.subtitle = subtitle
    }
}
