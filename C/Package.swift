// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "C",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "C",
            targets: ["C"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(path: "../A"),
        .package(path: "../B")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "C",
            dependencies: ["A", "B"]),
        .testTarget(
            name: "CTests",
            dependencies: ["C"]),
    ]
)
