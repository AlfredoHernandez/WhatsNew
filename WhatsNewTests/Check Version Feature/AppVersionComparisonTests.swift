//
//  Copyright © 2022 Jesús Alfredo Hernández Alarcón. All rights reserved.
//

import WhatsNew
import XCTest

final class AppVersionComparisonTests: XCTestCase {
    func test_asSemeverWithInvalidVersion_returnsZeroVersion() {
        XCTAssertEqual("invalid-version".asSemver(), .zero)
        XCTAssertEqual("0.2.3.4".asSemver(), .zero)
        XCTAssertEqual("0.2".asSemver(), .zero)
        XCTAssertEqual("A.b.C".asSemver(), .zero)
        XCTAssertEqual("#./.!".asSemver(), .zero)
        XCTAssertEqual("X.1.3".asSemver(), .zero)
        XCTAssertEqual("4.X.3".asSemver(), .zero)
        XCTAssertEqual("5.1.X".asSemver(), .zero)
    }

    func test_greaterVesionThanComparedWithSameVersion_returnsFalse() {
        XCTAssertFalse("0.0.1".greaterVesionThan("0.0.1"))
        XCTAssertFalse("0.2.1".greaterVesionThan("0.2.1"))
        XCTAssertFalse("3.2.1".greaterVesionThan("3.2.1"))
    }

    func test_greaterVesionThanComparedWithLowerVersion_returnsTrue() {
        XCTAssertTrue("1.2.3".greaterVesionThan("1.2.2"))
        XCTAssertTrue("1.2.3".greaterVesionThan("1.1.4"))
        XCTAssertTrue("1.2.3".greaterVesionThan("0.3.5"))
    }

    func test_greaterVesionThanComparedWithGreaterVersion_returnsFalse() {
        XCTAssertFalse("1.2.3".greaterVesionThan("1.2.4"))
        XCTAssertFalse("1.2.3".greaterVesionThan("1.3.4"))
        XCTAssertFalse("1.2.3".greaterVesionThan("2.3.4"))
    }
}
