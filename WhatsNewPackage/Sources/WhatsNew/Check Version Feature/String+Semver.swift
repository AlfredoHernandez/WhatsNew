//
//  Copyright © 2022 Jesús Alfredo Hernández Alarcón. All rights reserved.
//

import Foundation

public extension String {
    func greaterVesionThan(_ other: String) -> Bool {
        let current = asSemver()
        let other = other.asSemver()
        return current > other
    }

    func asSemver() -> AppVersion {
        let semver = split(separator: ".")
        guard
            semver.count == 3,
            let major = Int(semver[0]),
            let minor = Int(semver[1]),
            let patch = Int(semver[2])
        else {
            return AppVersion(major: 0, minor: 0, patch: 0)
        }
        return AppVersion(major: major, minor: minor, patch: patch)
    }
}
