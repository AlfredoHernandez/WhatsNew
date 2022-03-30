//
//  Copyright © 2022 Jesús Alfredo Hernández Alarcón. All rights reserved.
//

import Foundation

/// Returns true if should show whats new, otherwise false
///
/// - Parameters:
///     - store: A `WhatsNewStore` to load and save the app version
///     - currentAppVersion: The current app string version with semver format (e.g. `"1.0.0"`)
public func showWhatsNew(store: WhatsNewStore, currentAppVersion: String) -> Bool {
    guard let oldAppVersion = store.loadAppVersion() else {
        store.save(newAppVersion: currentAppVersion)
        return true
    }
    return currentAppVersion.greaterVesionThan(oldAppVersion)
}
