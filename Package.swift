// swift-tools-version:5.10

import PackageDescription

let package = Package(
    name: "Replicate",
    platforms: [
        .macOS(.v13),
        .iOS(.v16)
    ],
    products: [
        .library(
            name: "Replicate",
            targets: [
                "Replicate"
            ]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/PreternaturalAI/AI.git", branch: "main"),
    ],
    targets: [
        .target(
            name: "Replicate",
            dependencies: [
                "AI"
            ]
        ),
        .testTarget(
            name: "ReplicateTests",
            dependencies: [
                "Replicate"
            ]
        ),
    ],
    swiftLanguageVersions: [.v5]
    
)
