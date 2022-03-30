//
//  Copyright © 2022 Jesús Alfredo Hernández Alarcón. All rights reserved.
//

@testable import WhatsNew
import XCTest

class WhatsNewPresentationTests: XCTestCase {
    func test_whatsNew_isLocalized() {
        XCTAssertEqual(WhatsNewPresenter.title, localized("whats_new"))
    }

    func test_whatsNewIn_isLocalized() {
        XCTAssertEqual(WhatsNewPresenter.whatsNew(in: "Sample App"), localized("whats_new_in", param: "Sample App"))
    }

    func test_continue_isLocalized() {
        XCTAssertEqual(WhatsNewPresenter.continue, localized("whats_new_continue"))
    }

    private func localized(_ key: String, param: CVarArg? = nil, table: String = "Localizable", file: StaticString = #filePath, line: UInt = #line) -> String {
        let bundle = Bundle.module
        let value = bundle.localizedString(forKey: key, value: nil, table: table)
        if value == key {
            XCTFail("Missing localized string for key: `\(key)` in table: `\(table)`", file: file, line: line)
        }
        if let param = param { return String(format: value, param) }
        return value
    }
}
