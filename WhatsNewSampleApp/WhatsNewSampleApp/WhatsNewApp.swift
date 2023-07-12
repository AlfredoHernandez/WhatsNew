//
//  Copyright © 2023 Jesús Alfredo Hernández Alarcón. All rights reserved.
//

import SwiftUI
import WhatsNew

@main
struct WhatsNewApp: App {
    let store = SampleAppWhatsNewStore()

    var body: some Scene {
        WindowGroup {
            WelcomeView(
                displayWhatsNew: showWhatsNew(
                    store: store,
                    currentAppVersion: Bundle.main.releaseVersionNumber ?? ""
                )
            )
        }
    }
}
