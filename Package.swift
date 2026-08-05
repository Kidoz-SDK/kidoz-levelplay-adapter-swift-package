// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "KidozIronSourceAdapter",
    platforms: [
        .iOS(.v12) // or your minimum supported version
    ],
    products: [
        .library(
            name: "KidozIronSourceAdapter",
            targets: ["KidozIronSourceAdapterTarget"]
        )
    ],
    dependencies: [
        // Dependency on core SDK
        .package(url: "https://github.com/Kidoz-SDK/kidoz-sdk-swift-package.git", from: "10.1.3"),
        // Dependency on mediation network SDK
        .package(url: "https://github.com/ironsource-mobile/LevelPlay-Swift-Package", from: "9.0.0")
    ],
    targets: [
        
        .target(
            name: "KidozIronSourceAdapterTarget",
            dependencies: [
                .product(name: "KidozSDK", package: "kidoz-sdk-swift-package"),
                .product(name: "UnityMediationSDK", package: "LevelPlay-Swift-Package"),
                "KidozIronSourceAdapter"
            ]
        ),
        .binaryTarget(
            name: "KidozIronSourceAdapter",
            path: "XCFramework/KidozIronSourceAdapter.xcframework"
        )
    ]
)

