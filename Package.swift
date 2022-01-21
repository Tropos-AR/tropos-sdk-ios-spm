// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "UnityFramework",
    platforms: [
           .iOS(.v13)
       ],
  
    products: [
           .library(name: "UnityFramework", targets: ["UnityFramework"]),
       ],
   
    targets: [
        .binaryTarget(
                    name: "UnityFramework",
                    path: "lib/UnityFramework.xcframework")]
   
                   
        
)
