// swift-tools-version:5.0

import PackageDescription

let package = Package(
	name: "PusherSwift",
	platforms: [.iOS("13.0"), .macOS("10.15"), .tvOS("13.0")],
	products: [
		.library(name: "PusherSwift", targets: ["PusherSwift"])
	],
	dependencies: [
		.package(url: "https://github.com/apple/swift-nio.git", from: "2.26.0"),
		.package(url: "https://github.com/apple/swift-nio-ssl.git", from: "2.0.0"),
//		.package(url: "https://github.com/blocks-lockers/websocket-kit", .upToNextMajor(from: "2.1.2")),
//		.package(url: "https://github.com/bitmark-inc/tweetnacl-swiftwrap", .upToNextMajor(from: "1.0.0")),
	],
	targets: [
		.target(
			name: "PusherSwift",
			dependencies: [
				.product(name: "NIO", package: "swift-nio"),
				.product(name: "NIOConcurrencyHelpers", package: "swift-nio"),
				.product(name: "NIOFoundationCompat", package: "swift-nio"),
				.product(name: "NIOHTTP1", package: "swift-nio"),
				.product(name: "NIOSSL", package: "swift-nio-ssl"),
				.product(name: "NIOWebSocket", package: "swift-nio"),
//				"WebSocketKit",
//				"TweetNacl",
            ],
            path: "Sources"
        ),
    ],
    swiftLanguageVersions: [.v5]
)
