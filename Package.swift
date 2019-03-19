// swift-tools-version:4.2

import PackageDescription

let package = Package(
    name: "RefinementTypes",
    products: [
        .library(name: "RefinementTypes", targets: ["RefinementTypes"]),
    ],
    dependencies: [ ],
    targets: [
        .target(name: "RefinementTypes",
                dependencies: []),
        .testTarget(name: "RefinementTypesTests",
                    dependencies: ["RefinementTypes"]),
    ]
)
