//
//  Copyright © 2022 Jesús Alfredo Hernández Alarcón. All rights reserved.
//

@testable import WhatsNew
import XCTest

final class ShowWhatsNewUseCaseTests: XCTestCase {
    func test_showWhatsNewWithoutStoredAppVersion_returnsTrue() {
        let store = InMemoryStore()

        XCTAssertTrue(showWhatsNew(store: store, currentAppVersion: anyAppVersion))
    }

    func test_showWhatsNewWithoutStoredAppVersion_storesCurrentAppVersion() {
        let store = InMemoryStore()

        _ = showWhatsNew(store: store, currentAppVersion: "0.0.0")

        XCTAssertEqual(store.appVersion, "0.0.0")
    }

    func test_showWhatsNewWithStoredOldAppVersion_returnsTrue() {
        let store = InMemoryStore(appVersion: "0.0.0")

        XCTAssertTrue(showWhatsNew(store: store, currentAppVersion: "0.0.1"))
    }

    func test_showWhatsNewWithStoredGreaterAppVersion_returnsFalse() {
        let store = InMemoryStore(appVersion: "0.0.2")

        XCTAssertFalse(showWhatsNew(store: store, currentAppVersion: "0.0.1"))
    }

    func test_showWhatsNewWithStoredEqualAppVersion_returnsFalse() {
        let store = InMemoryStore(appVersion: "0.0.1")

        XCTAssertFalse(showWhatsNew(store: store, currentAppVersion: "0.0.1"))
    }

    // MARK: - Helpers

    class InMemoryStore: WhatsNewStore {
        private(set) var appVersion: String?

        init(appVersion: String? = nil) {
            self.appVersion = appVersion
        }

        func loadAppVersion() -> String? { appVersion }

        func save(newAppVersion: String) {
            appVersion = newAppVersion
        }
    }

    private let anyAppVersion = "0.0.0"
}
