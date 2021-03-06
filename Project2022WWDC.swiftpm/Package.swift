// swift-tools-version: 5.5

// WARNING:
// This file is automatically generated.
// Do not edit it by hand because the contents will be replaced.

import PackageDescription
import AppleProductTypes

let package = Package(
    name: "Project2022WWDC",
    platforms: [
        .iOS("15.2")
    ],
    products: [
        .iOSApplication(
            name: "Project2022WWDC",
            targets: ["AppModule"],
            bundleIdentifier: "LeticiaAquino.Project2022WWDC",
            teamIdentifier: "9RLFNKG3CC",
            displayVersion: "1.0",
            bundleVersion: "1",
            iconAssetName: "AppIcon",
            accentColorAssetName: "AccentColor",
            supportedDeviceFamilies: [
                .pad,
                .phone
            ],
            supportedInterfaceOrientations: [
                .portrait,
                .portraitUpsideDown(.when(deviceFamilies: [.pad]))
            ]
        )
    ],
    targets: [
        .executableTarget(
            name: "AppModule",
            path: "."
        )
    ]
)
