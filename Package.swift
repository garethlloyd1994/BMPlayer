// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "BMPlayer",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "BMPlayer",
            targets: ["BMPlayer"]),
    ],
    dependencies: [
            .package(url: "https://github.com/SnapKit/SnapKit.git", from: "5.7.0"),
            .package(url: "https://github.com/ninjaprox/NVActivityIndicatorView.git", from: "5.1.1"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "BMPlayer",
            dependencies: ["SnapKit", "NVActivityIndicatorView"]),
        .testTarget(
            name: "BMPlayerTests",
            dependencies: ["BMPlayer"]),
    ]
)
