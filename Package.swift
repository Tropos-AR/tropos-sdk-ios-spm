// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "tropos-ar-ios-spm",
    platforms: [
           .iOS(.v11)
       ],
    products: [
       .library(
            name: "tropos-ar-ios-spm",
            targets: ["tropos-ar-ios-spm", "CrashReporter", "TroposARSDK"])
    ],
    targets: [
        .target(
                   name: "tropos-ar-ios-spm",
                   dependencies: ["TroposARSDK", "CrashReporter"]
               ),
        .binaryTarget(
                    name: "CrashReporter",
                    path: "lib/CrashReporter.xcframework"),
        .binaryTarget(
                    name: "TroposARSDK",
                    path: "lib/TroposARSDK.xcframework")    ]
)
