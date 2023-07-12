//
//  Copyright © 2023 Jesús Alfredo Hernández Alarcón. All rights reserved.
//

import Foundation

public protocol WhatsNewStore {
    func loadAppVersion() -> String?
    func save(newAppVersion: String) -> Void
}
