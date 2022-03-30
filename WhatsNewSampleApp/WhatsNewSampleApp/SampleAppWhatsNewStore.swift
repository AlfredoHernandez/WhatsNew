//
//  Copyright © 2022 Jesús Alfredo Hernández Alarcón. All rights reserved.
//

import Foundation
import WhatsNew

class SampleAppWhatsNewStore: WhatsNewStore {
    func loadAppVersion() -> String? {
        UserDefaults.standard.string(forKey: "app_version")
    }

    func save(newAppVersion: String) {
        UserDefaults.standard.set(newAppVersion, forKey: "app_version")
    }
}
