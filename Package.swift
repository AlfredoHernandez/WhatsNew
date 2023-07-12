// swift-tools-version: 5.8

import PackageDescription

let package = Package(
    name: "WhatsNew",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v14),
    ],
    products: [
        .library(name: "WhatsNew", targets: ["WhatsNew"]),
    ],
    dependencies: [],
    targets: [
        .target(name: "WhatsNew", dependencies: []),
        .testTarget(name: "WhatsNewTests", dependencies: ["WhatsNew"]),
    ]
)
