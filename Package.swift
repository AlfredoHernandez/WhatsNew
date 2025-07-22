// swift-tools-version: 6.1

import PackageDescription

let package = Package(
    name: "WhatsNew",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v14),
        .macOS(.v12),
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
