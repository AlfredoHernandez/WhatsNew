//
//  Copyright © 2023 Jesús Alfredo Hernández Alarcón. All rights reserved.
//

import Foundation

public struct AppVersion: Comparable, CustomStringConvertible {
    public let major: Int
    public let minor: Int
    public let patch: Int

    public static let zero = AppVersion(major: 0, minor: 0, patch: 0)

    public init(major: Int, minor: Int, patch: Int) {
        self.major = major
        self.minor = minor
        self.patch = patch
    }

    public static func < (lhs: AppVersion, rhs: AppVersion) -> Bool {
        if lhs.major == rhs.major {
            if lhs.minor == rhs.minor {
                return lhs.patch < rhs.patch
            }
            return lhs.minor < rhs.minor
        }
        return lhs.major < rhs.major
    }

    public var description: String {
        "\(major).\(minor).\(patch)"
    }
}
