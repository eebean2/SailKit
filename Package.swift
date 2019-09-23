// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SailKit",
    products: [
        .library(
            name: "SailKit",
            targets: ["SailKit"]),
    ],
    dependencies: [
    .package(url: "https://github.com/BrickWaterStudios/SailSDK.git", .branch( "master")),
    ],
    targets: [
        .target(
            name: "SailKit",
            dependencies: ["SailSDK"]),
        .testTarget(
            name: "SailKitTests",
            dependencies: ["SailKit"]),
    ]
)
