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
        .package(url: "https://github.com/Kidoz-SDK/kidoz-sdk-swift-package.git", from: "10.1.3")
    ],
    targets: [
        
        .target(
            name: "KidozIronSourceAdapterTarget",
            dependencies: [
                .product(name: "KidozSDK", package: "kidoz-sdk-swift-package"),
                "KidozIronSourceAdapter"
            ]
        ),
        .binaryTarget(
            name: "KidozIronSourceAdapter",
            path: "XCFramework/KidozIronSourceAdapter.xcframework"
        )
    ]
)

