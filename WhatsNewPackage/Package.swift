// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "WhatsNew",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v14),
    ],
    products: [
        .library(
            name: "WhatsNew",
            targets: ["WhatsNew"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "WhatsNew",
            dependencies: []),
        .testTarget(
            name: "WhatsNewTests",
            dependencies: ["WhatsNew"]),
    ]
)
