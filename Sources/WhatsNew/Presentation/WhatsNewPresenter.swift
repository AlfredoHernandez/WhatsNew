//
//  Copyright © 2023 Jesús Alfredo Hernández Alarcón. All rights reserved.
//

import Foundation

class WhatsNewPresenter {
    static let title = NSLocalizedString("whats_new", bundle: Bundle.module, comment: "")

    static func whatsNew(in app: String) -> String {
        String(format: NSLocalizedString("whats_new_in", bundle: Bundle.module, comment: ""), app)
    }

    static let `continue` = NSLocalizedString("whats_new_continue", bundle: Bundle.module, comment: "")
}
