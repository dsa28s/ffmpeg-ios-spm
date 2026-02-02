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
            url: "https://github.com/dsa28s/ffmpeg-ios-spm/releases/download/20260202_143537/ffmpegkit-ios@20260202_143537.zip",
            checksum: "b85b362aedf597dd01456b93c825d33ac0c3aadb921e4c2e2fe4159f652f65a1"
        ),
        .binaryTarget(
            name: "libavcodec",
            url: "https://github.com/dsa28s/ffmpeg-ios-spm/releases/download/20260202_143537/libavcodec-ios@20260202_143537.zip",
            checksum: "3a3dc237f654de2bc9a7f5f5191c753137f5dbd7b2faa77d92437c9a270fded8"
        ),
        .binaryTarget(
            name: "libavdevice",
            url: "https://github.com/dsa28s/ffmpeg-ios-spm/releases/download/20260202_143537/libavdevice-ios@20260202_143537.zip",
            checksum: "ca48104aa3b632d1e72175c2194cfc6c0a2fb83da5b388c2e733b765ab076585"
        ),
        .binaryTarget(
            name: "libavfilter",
            url: "https://github.com/dsa28s/ffmpeg-ios-spm/releases/download/20260202_143537/libavfilter-ios@20260202_143537.zip",
            checksum: "bc40961cc5e2a0f6dbadc2a5a3c49a88a9f57f5ab1790985145461b862eaf7be"
        ),
        .binaryTarget(
            name: "libavformat",
            url: "https://github.com/dsa28s/ffmpeg-ios-spm/releases/download/20260202_143537/libavformat-ios@20260202_143537.zip",
            checksum: "072183508274b9ceb319e7b77451460daf2ed2e016acf062622eabd102bb3932"
        ),
        .binaryTarget(
            name: "libavutil",
            url: "https://github.com/dsa28s/ffmpeg-ios-spm/releases/download/20260202_143537/libavutil-ios@20260202_143537.zip",
            checksum: "61171f6b074a11c419105356a24be3732528962f3e59f6c06911f4503afc541d"
        ),
        .binaryTarget(
            name: "libswresample",
            url: "https://github.com/dsa28s/ffmpeg-ios-spm/releases/download/20260202_143537/libswresample-ios@20260202_143537.zip",
            checksum: "33354ce939010e8961c4ace03fb1a46bcd92457afac8cc8ec2d8d47e11fcdba9"
        ),
        .binaryTarget(
            name: "libswscale",
            url: "https://github.com/dsa28s/ffmpeg-ios-spm/releases/download/20260202_143537/libswscale-ios@20260202_143537.zip",
            checksum: "7c20bf971e7732b4b5cd9d3adaec7e636811adbd3230111217f4806791db8307"
        ),
    ]
)
