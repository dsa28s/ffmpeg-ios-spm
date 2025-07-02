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
            url: "https://github.com/dsa28s/ffmpeg-ios-spm/releases/download/20250702_192134/ffmpegkit-ios@20250702_192134.zip",
            checksum: "d8a48b83d0707f435a22d1ef09e8121031b197c120315807b0e2a7bc008f8a36"
        ),
        .binaryTarget(
            name: "libavcodec",
            url: "https://github.com/dsa28s/ffmpeg-ios-spm/releases/download/20250702_192134/libavcodec-ios@20250702_192134.zip",
            checksum: "bba9f948c4180ea2508a8476048496b8cb00ffc87fa2bad2771cfd56e4b8d99d"
        ),
        .binaryTarget(
            name: "libavdevice",
            url: "https://github.com/dsa28s/ffmpeg-ios-spm/releases/download/20250702_192134/libavdevice-ios@20250702_192134.zip",
            checksum: "f9a8acb21ef6c496c536a19d1a86d7c3ffb1cc61186eed4c87480139b33c8fb5"
        ),
        .binaryTarget(
            name: "libavfilter",
            url: "https://github.com/dsa28s/ffmpeg-ios-spm/releases/download/20250702_192134/libavfilter-ios@20250702_192134.zip",
            checksum: "b751039ee73ef5782b760e50a30b7032da22e5b1f4b92eff9636eb18a9ff9b97"
        ),
        .binaryTarget(
            name: "libavformat",
            url: "https://github.com/dsa28s/ffmpeg-ios-spm/releases/download/20250702_192134/libavformat-ios@20250702_192134.zip",
            checksum: "eacd60ae8c6ae6b3054a6d8b8fc3161bf82c71d823fb8e44196a17fdb5311d80"
        ),
        .binaryTarget(
            name: "libavutil",
            url: "https://github.com/dsa28s/ffmpeg-ios-spm/releases/download/20250702_192134/libavutil-ios@20250702_192134.zip",
            checksum: "27b0128c2bfddc7d5393bfcdbefccb214c97d06b300b0004c94721a8700f304a"
        ),
        .binaryTarget(
            name: "libswresample",
            url: "https://github.com/dsa28s/ffmpeg-ios-spm/releases/download/20250702_192134/libswresample-ios@20250702_192134.zip",
            checksum: "85e580279e44da52cab1fb2bc8572308593397fc45b18c42a085495c2a9cb59b"
        ),
        .binaryTarget(
            name: "libswscale",
            url: "https://github.com/dsa28s/ffmpeg-ios-spm/releases/download/20250702_192134/libswscale-ios@20250702_192134.zip",
            checksum: "04ffb65d50686b84f63f1ef62ec0acbcb96b2ef70c412c3cb564005473f4fc63"
        ),
    ]
)
