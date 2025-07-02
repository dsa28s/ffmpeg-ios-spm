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
            url: "https://github.com/dsa28s/ffmpeg-ios-spm/releases/download/20250702_155432/ffmpegkit-ios@20250702_170000.zip",
            checksum: "8ead116d9f8492b61352890b241750e2bda857039a6054b0111e5d440235ce82"
        ),
        .binaryTarget(
            name: "libavcodec",
            url: "https://github.com/dsa28s/ffmpeg-ios-spm/releases/download/20250702_155432/libavcodec-ios@20250702_170000.zip",
            checksum: "f28f127a1b7200a9746e62706f19b37b96b5ad9de3d8c91172eb888e8d0b40d0"
        ),
        .binaryTarget(
            name: "libavdevice",
            url: "https://github.com/dsa28s/ffmpeg-ios-spm/releases/download/20250702_155432/libavdevice-ios@20250702_170000.zip",
            checksum: "00b11417fe92bfdd5e97198dd59816ba04f03ffea8213f182de177b3d168a62b"
        ),
        .binaryTarget(
            name: "libavfilter",
            url: "https://github.com/dsa28s/ffmpeg-ios-spm/releases/download/20250702_155432/libavfilter-ios@20250702_170000.zip",
            checksum: "11b31eab68de4475d3262c26395acf5e824fa1b9141fc494cd0c30c8b49cc646"
        ),
        .binaryTarget(
            name: "libavformat",
            url: "https://github.com/dsa28s/ffmpeg-ios-spm/releases/download/20250702_155432/libavformat-ios@20250702_170000.zip",
            checksum: "80211181e1d12f3004ab30c4e97d7466cde01dd5a3ede61a6bd098475e75484a"
        ),
        .binaryTarget(
            name: "libavutil",
            url: "https://github.com/dsa28s/ffmpeg-ios-spm/releases/download/20250702_155432/libavutil-ios@20250702_170000.zip",
            checksum: "e72f70a0326fb09e41f51877580d19e61bf13e886e485cba7cf04fdfd8112d00"
        ),
        .binaryTarget(
            name: "libswresample",
            url: "https://github.com/dsa28s/ffmpeg-ios-spm/releases/download/20250702_155432/libswresample-ios@20250702_170000.zip",
            checksum: "87175c63d85bf2680aacc7bc91fea3e7c31d9b778a6582b7d27866d8b489dab7"
        ),
        .binaryTarget(
            name: "libswscale",
            url: "https://github.com/dsa28s/ffmpeg-ios-spm/releases/download/20250702_155432/libswscale-ios@20250702_170000.zip",
            checksum: "8e1dc21c376fe9cd42a0e9fec2a80d11d3455725995d0b1aac2dafdcef333c4a"
        ),
    ]
)
