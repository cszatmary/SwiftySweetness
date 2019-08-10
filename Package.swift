// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "SwiftySweetness",
    products: [
        .library(
            name: "SwiftySweetness",
            targets: ["SwiftySweetness"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/Quick/Quick.git", from: "2.1.0"),
        .package(url: "https://github.com/Quick/Nimble.git", from: "8.0.2"),
        .package(url: "https://github.com/orta/Komondor.git", from: "1.0.4"),
    ],
    targets: [
        .target(
            name: "SwiftySweetness",
            dependencies: []
        ),
        .testTarget(
            name: "SwiftySweetnessTests",
            dependencies: ["SwiftySweetness", "Quick", "Nimble"]
        ),
    ],
    swiftLanguageVersions: [.v5]
)

#if canImport(PackageConfig)
    import PackageConfig

    let config = PackageConfiguration([
        "komondor": [
            "pre-commit": [
                "make format",
                "make lint",
                "git add .",
            ],
        ],
    ]).write()
#endif
