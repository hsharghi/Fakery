// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "Fakery",
    products: [
      .library(name: "Fakery", targets: ["Fakery"])
    ],
// 	dependencies: [
// 		.package(url: "https://github.com/Appsaurus/SwiftTestUtils", from: "0.1.0")
// 	],
    targets: [
      .target(name: "Fakery"),
	  .testTarget(name: "FakeryTests", dependencies: ["Fakery"])//, "SwiftTestUtils"])
    ]
)
