// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "web3swift",
    platforms: [
        .macOS(.v10_15)
    ],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(name: "Web3swift", targets: ["Web3swift"]),
    ],
    
    dependencies: [
        .package(url: "https://github.com/attaswift/BigInt.git", from: "5.3.0"),
        .package(url: "https://github.com/mxcl/PromiseKit.git", from: "6.16.1"),
        .package(url: "https://github.com/vapor/websocket-kit", from: "2.2.0"),
        .package(url: "https://github.com/krzyzanowskim/CryptoSwift.git", from: "1.4.1"),
    ],
    targets: [
        .target(name: "Web3swift", dependencies: [
            .product(name: "BigInt", package: "BigInt"),
            .product(name: "PromiseKit", package: "PromiseKit"),
            .product(name: "WebSocketKit", package: "websocket-kit"),
            .product(name: "CryptoSwift", package: "CryptoSwift"),
            .byName(name: "secp256k1")
        ]),
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(name: "secp256k1"),
        .testTarget(
            name: "Web3swiftTests",
            dependencies: ["Web3swift"]),
    ]
)
