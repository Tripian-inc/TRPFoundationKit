// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TRPFoundationKit",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(
            name: "TRPFoundationKit",
            targets: ["TRPFoundationKit"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "TRPFoundationKit",
            dependencies: [],
            path: "TRPFoundationKit"),
        .testTarget(
            name: "TRPFoundationKitTests",
            dependencies: ["TRPFoundationKit"],
            path: "TRPFoundationKitTests"),
    ]
)
