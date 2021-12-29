// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TroposARSDK",
    platforms: [
           .iOS(.v11)
       ],
    products: [
       .library(
            name: "TroposARSDK",
            targets: ["TroposARSDK"])
    ],
    targets: [
           .binaryTarget(
                   name: "TroposARSDK",
                   path: "lib/TroposARSDK.xcframework" // this is a symlink
               )
    ]
)
