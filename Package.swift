// swift-tools-version: 5.10

import PackageDescription

let package = Package(
    name: "SwiftParameterPackExtras",
    platforms: [
        .macOS(.v14),
        .iOS(.v17),
        .tvOS(.v17),
        .watchOS(.v10),
        .visionOS(.v1),
    ],
    products: [
        .library(
            name: "SwiftParameterPackExtras",
            targets: ["SwiftParameterPackExtras"]),
    ],
    targets: [
        .target(
            name: "SwiftParameterPackExtras"),
        .testTarget(
            name: "SwiftParameterPackExtrasTests",
            dependencies: ["SwiftParameterPackExtras"]),
    ]
)
