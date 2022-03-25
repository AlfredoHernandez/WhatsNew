//
//  Copyright © 2022 Jesús Alfredo Hernández Alarcón. All rights reserved.
//

import Foundation

class WhatsNewPresenter {
    static let title = NSLocalizedString("whats_new", bundle: Bundle(for: WhatsNewPresenter.self), comment: "")

    static func whatsNew(in app: String) -> String {
        String(format: NSLocalizedString("whats_new_in", bundle: Bundle(for: WhatsNewPresenter.self), comment: ""), app)
    }

    static let `continue` = NSLocalizedString("whats_new_continue", bundle: Bundle(for: WhatsNewPresenter.self), comment: "")
}
