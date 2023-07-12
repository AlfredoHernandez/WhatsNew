//
//  Copyright © 2023 Jesús Alfredo Hernández Alarcón. All rights reserved.
//

@testable import WhatsNew
import XCTest

class FeaturesBuilderTests: XCTestCase {
    func test_initWithFeature_createsViewWithFeature() {
        let sut = makeSUT(imageName: "my image", title: "my title", subtitle: "my subtitle")

        XCTAssertEqual(sut.build(), [.init(imageName: "my image", title: "my title", subtitle: "my subtitle")])
    }

    func test_add_addFeatureToFeatures() throws {
        var sut = makeSUT()

        sut.add(imageName: "another image", title: "another title", subtitle: "another subtitle")

        XCTAssertEqual(sut.build(), [
            .init(imageName: "an image name", title: "a title", subtitle: "a subtitle"),
            .init(imageName: "another image", title: "another title", subtitle: "another subtitle"),
        ])
    }

    func test_adding_addFeatureToFeatures() throws {
        let features = makeSUT()
            .adding(imageName: "another image", title: "another title", subtitle: "another subtitle")
            .build()

        XCTAssertEqual(features, [
            .init(imageName: "an image name", title: "a title", subtitle: "a subtitle"),
            .init(imageName: "another image", title: "another title", subtitle: "another subtitle"),
        ])
    }

    // MARK: - Helpers

    private func makeSUT(
        imageName: String = "an image name",
        title: String = "a title",
        subtitle: String = "a subtitle"
    ) -> FeaturesBuilder {
        FeaturesBuilder(imageName: imageName, title: title, subtitle: subtitle)
    }
}
