// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "SwiftCXXInteropExample",
    platforms: [
        .macOS(.v12),
    ],
    products: [
        .library(name: "CXX", targets: ["CXX"]),
        .executable(name: "CLI", targets: ["CLI"])
    ],
    dependencies: [],
    targets: [
        .target(name: "CXX"),
        .executableTarget(
            name: "CLI",
            dependencies: ["CXX"],
            swiftSettings: [.unsafeFlags(["-enable-experimental-cxx-interop"])]
        )
    ]
)
