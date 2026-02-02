// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ffmpegkit",
    platforms: [.iOS(.v16)],
    products: [
        .library(
            name: "ffmpegkit_wrapper",
            targets: ["ffmpegkit_wrapper"]
        ),
    ],
    targets: [
        .target(
            name: "ffmpegkit_wrapper",
            dependencies: ["ffmpegkit", "libavcodec", "libavdevice", "libavfilter", "libavformat", "libavutil", "libswresample", "libswscale"]
        ),
        .binaryTarget(
            name: "ffmpegkit",
            url: "https://github.com/dsa28s/ffmpeg-ios-spm/releases/download/20260202_145233/ffmpegkit-ios@20260202_145233.zip",
            checksum: "616b1205c0a1c263e788972e1789befaa53871c6160294d74bad2dfd337f7e80"
        ),
        .binaryTarget(
            name: "libavcodec",
            url: "https://github.com/dsa28s/ffmpeg-ios-spm/releases/download/20260202_145233/libavcodec-ios@20260202_145233.zip",
            checksum: "6e937c3f06337576467633ef72d57d252a10a448fc85bce5726bec1b57e939d2"
        ),
        .binaryTarget(
            name: "libavdevice",
            url: "https://github.com/dsa28s/ffmpeg-ios-spm/releases/download/20260202_145233/libavdevice-ios@20260202_145233.zip",
            checksum: "d0969364ba1fc53b8d7748eaf43bbc67baa4ceca4c08974c2c0f5480e62cfe0e"
        ),
        .binaryTarget(
            name: "libavfilter",
            url: "https://github.com/dsa28s/ffmpeg-ios-spm/releases/download/20260202_145233/libavfilter-ios@20260202_145233.zip",
            checksum: "9e4d4e13643b524d85ed36c0f68091fe2598bf190adf71a5628b6f475576fdd0"
        ),
        .binaryTarget(
            name: "libavformat",
            url: "https://github.com/dsa28s/ffmpeg-ios-spm/releases/download/20260202_145233/libavformat-ios@20260202_145233.zip",
            checksum: "8a699da4faaa8e2c246ca299eefb7e396d32f7e81bb45a6ff8c1a094384b7454"
        ),
        .binaryTarget(
            name: "libavutil",
            url: "https://github.com/dsa28s/ffmpeg-ios-spm/releases/download/20260202_145233/libavutil-ios@20260202_145233.zip",
            checksum: "95cc80bc6c13963c51f705d9768f83663dc1a055e656fc2ad006491b13c75124"
        ),
        .binaryTarget(
            name: "libswresample",
            url: "https://github.com/dsa28s/ffmpeg-ios-spm/releases/download/20260202_145233/libswresample-ios@20260202_145233.zip",
            checksum: "07d80d0a8f8256ddf8e16a59b89357d86bcd2b8cc7bd84c329c8fdca38ed7886"
        ),
        .binaryTarget(
            name: "libswscale",
            url: "https://github.com/dsa28s/ffmpeg-ios-spm/releases/download/20260202_145233/libswscale-ios@20260202_145233.zip",
            checksum: "f85314aafd9a527b09090620cd0eb48578e1786607e55965fe65a417d037a1b1"
        ),
    ]
)
