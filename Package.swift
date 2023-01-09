// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CPCorePackage2",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "CPCorePackage2",
            targets: ["CPCorePackage2"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/realm/realm-swift", branch: "master"),
        .package(url: "https://github.com/Alamofire/Alamofire.git", branch: "master"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "CPCorePackage2",
            dependencies: [
                .product(name: "RealmSwift", package: "realm-swift"),
                .product(name: "Alamofire", package: "Alamofire")
            ]),
        .testTarget(
            name: "CPCorePackage2Tests",
            dependencies: ["CPCorePackage2"]),
    ]
)
