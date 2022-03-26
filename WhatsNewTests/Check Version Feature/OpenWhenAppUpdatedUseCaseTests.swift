//
//  Copyright © 2022 Jesús Alfredo Hernández Alarcón. All rights reserved.
//

@testable import WhatsNew
import XCTest

final class OpenWhenAppUpdatedUseCaseTests: XCTestCase {
    func test_releaseVersionNumberPretty_retrieveAppVersion() {
        XCTAssertEqual(Bundle(for: WhatsNewEnvironment.self).releaseVersionNumberPretty, "v0.1.0")
    }

    func test_buildVersionNumber_retrieveBuildVersion() {
        XCTAssertEqual(Bundle(for: WhatsNewEnvironment.self).buildVersionNumber, "1")
    }
}
