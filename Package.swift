// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftEnhancedTests",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "SwiftEnhancedTests",
            targets: ["SwiftEnhancedTests"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
         .package(url: "https://github.com/JuliusHuizing/SwiftEnhancedRandomness", from: "1.0.1"),
        .package(name: "XCTest", url: "https://github.com/apple/swift-corelibs-xctest", branch: "main"),

    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "SwiftEnhancedTests",
            dependencies: [
            "SwiftEnhancedRandomness",
            "XCTest"]
        ),
        
        .testTarget(
            name: "SwiftEnhancedTestsTests",
            dependencies: ["SwiftEnhancedTests"]),
    ]
)
