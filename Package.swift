// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "PusherSwift",
    platforms: [.iOS("13.0"), .macOS("10.15"), .tvOS("13.0")],
    products: [
        .library(name: "PusherSwift", targets: ["PusherSwift"])
    ],
    dependencies: [
//      .package(url: "https://github.com/vapor/websocket-kit", .upToNextMajor(from: "2.1.2")),
//      .package(url: "https://github.com/bitmark-inc/tweetnacl-swiftwrap", .upToNextMajor(from: "1.0.0")),
    ],
    targets: [
        .target(
            name: "PusherSwift",
            dependencies: [
//              "WebSocketKit",
//              "TweetNacl",
            ],
            path: "Sources"
        ),
//        .testTarget(
//            name: "PusherSwiftTests",
//            dependencies: ["PusherSwift"],
//            path: "Tests"
//        )
    ],
    swiftLanguageVersions: [.v5]
)
