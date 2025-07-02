// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ffmpeg-ios-spm",
    platforms: [.iOS(.v16)],
    products: [
        .library(
            name: "ffmpegkit",
            targets: ["ffmpegkit", "libavcodec", "libavdevice", "libavfilter", "libavformat", "libavutil", "libswresample", "libswscale"]),
    ],
    targets: [
        .binaryTarget(
            name: "ffmpegkit",
            path: ""
        ),
        .binaryTarget(
            name: "libavcodec",
            path: ""
        ),
        .binaryTarget(
            name: "libavdevice",
            path: ""
        ),
        .binaryTarget(
            name: "libavfilter",
            path: ""
        ),
        .binaryTarget(
            name: "libavformat",
            path: ""
        ),
        .binaryTarget(
            name: "libavutil",
            path: ""
        ),
        .binaryTarget(
            name: "libswresample",
            path: ""
        ),
        .binaryTarget(
            name: "libswscale",
            path: ""
        ),
    ]
)
