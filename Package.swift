// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "WhatsNew",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(
            name: "WhatsNew",
            targets: ["WhatsNew"]),
    ],
    dependencies: [
        .package(url: "https://github.com/pointfreeco/swift-composable-architecture.git", from: "0.45.0"),
    ],
    targets: [
        .target(
            name: "WhatsNew",
            dependencies: [
                .product(name: "ComposableArchitecture", package: "swift-composable-architecture"),
            ]),
        .testTarget(
            name: "WhatsNewTests",
            dependencies: ["WhatsNew"]),
    ]
)
