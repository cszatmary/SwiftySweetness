// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

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
        .package(url: "https://github.com/Quick/Nimble.git", from: "8.0.0"),
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
