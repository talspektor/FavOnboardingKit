// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FavOnboardingKit",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "FavOnboardingKit",
            targets: ["FavOnboardingKit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/SnapKit/SnapKit", from: "5.0.0")
    ],
    targets: [
        .target(
            name: "FavOnboardingKit",
            dependencies: ["SnapKit"]
        ),
        .testTarget(
            name: "FavOnboardingKitTests",
            dependencies: ["FavOnboardingKit"]),
    ]
)
