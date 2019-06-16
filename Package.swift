// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftySweetness",
    products: [
        .library(
            name: "SwiftySweetness",
            targets: ["SwiftySweetness"]),
    ],
    targets: [
        .target(
            name: "SwiftySweetness",
            dependencies: []),
        .testTarget(
            name: "SwiftySweetnessTests",
            dependencies: ["SwiftySweetness"]),
    ]
)
