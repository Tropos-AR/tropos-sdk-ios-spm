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
            targets: ["tropos-ar-ios-spm", "AVProVideo", "CrashReporter", "TroposARSDK", "UnityFramework"])
    ],
    targets: [
        .target(
                   name: "tropos-ar-ios-spm",
                   dependencies: [ "AVProVideo", "CrashReporter", "TroposARSDK", "UnityFramework"]
               ),
        
        .binaryTarget(
                    name: "AVProVideo",
                    path: "lib/AVProVideo.xcframework"),
        .binaryTarget(
                    name: "CrashReporter",
                    path: "lib/CrashReporter.xcframework"),
        .binaryTarget(
                    name: "UnityFramework",
                    path: "lib/UnityFramework.xcframework"),
        .binaryTarget(
                    name: "TroposARSDK",
                    path: "lib/TroposARSDK.xcframework")    ]
)
