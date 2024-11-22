// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "AlamofireObjectMapper",
    platforms: [
        .macOS(.v12),
        .iOS(.v13),
        .tvOS(.v9),
        .watchOS(.v2)
    ],
    products: [
        .library(name: "AlamofireObjectMapper", targets: ["AlamofireObjectMapper"])
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire", from: "5.9.0"),
        .package(url: "https://github.com/tristanhimmelman/ObjectMapper", from: "4.2.0")
    ],
    targets: [
        .target(
            name: "AlamofireObjectMapper",
            dependencies: [
                .product(name: "Alamofire", package: "Alamofire"),
                .product(name: "ObjectMapper", package: "ObjectMapper")
            ],
            path: "AlamofireObjectMapper"
        )
    ],
    swiftLanguageVersions: [.v5]
)

