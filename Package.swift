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
            path: "https://github.com/dsa28s/ffmpeg-ios-spm/releases/download/20250702_155432/ffmpegkit-ios@20250702_155432.zip"
        ),
        .binaryTarget(
            name: "libavcodec",
            path: "https://github.com/dsa28s/ffmpeg-ios-spm/releases/download/20250702_155432/ffmpegkit-ios@20250702_155432.zip"
        ),
        .binaryTarget(
            name: "libavdevice",
            path: "https://github.com/dsa28s/ffmpeg-ios-spm/releases/download/20250702_155432/ffmpegkit-ios@20250702_155432.zip"
        ),
        .binaryTarget(
            name: "libavfilter",
            path: "https://github.com/dsa28s/ffmpeg-ios-spm/releases/download/20250702_155432/ffmpegkit-ios@20250702_155432.zip"
        ),
        .binaryTarget(
            name: "libavformat",
            path: "https://github.com/dsa28s/ffmpeg-ios-spm/releases/download/20250702_155432/ffmpegkit-ios@20250702_155432.zip"
        ),
        .binaryTarget(
            name: "libavutil",
            path: "https://github.com/dsa28s/ffmpeg-ios-spm/releases/download/20250702_155432/ffmpegkit-ios@20250702_155432.zip"
        ),
        .binaryTarget(
            name: "libswresample",
            path: "https://github.com/dsa28s/ffmpeg-ios-spm/releases/download/20250702_155432/ffmpegkit-ios@20250702_155432.zip"
        ),
        .binaryTarget(
            name: "libswscale",
            path: "https://github.com/dsa28s/ffmpeg-ios-spm/releases/download/20250702_155432/ffmpegkit-ios@20250702_155432.zip"
        ),
    ]
)
