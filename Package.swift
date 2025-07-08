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
            url: "https://github.com/dsa28s/ffmpeg-ios-spm/releases/download/20250708_172051/ffmpegkit-ios@20250708_172051.zip",
            checksum: "35f615ad971d8da907a6429e927870176a9cd825feaa7ea07c5c1e558482363b"
        ),
        .binaryTarget(
            name: "libavcodec",
            url: "https://github.com/dsa28s/ffmpeg-ios-spm/releases/download/20250708_172051/libavcodec-ios@20250708_172051.zip",
            checksum: "8c44ff0341dcdd5bd4abe4ce85a791b0e600c8e8836ee745fbc2d2da48d4ffc1"
        ),
        .binaryTarget(
            name: "libavdevice",
            url: "https://github.com/dsa28s/ffmpeg-ios-spm/releases/download/20250708_172051/libavdevice-ios@20250708_172051.zip",
            checksum: "850eb290439cba32d19cc8c8eb0835d9ba4d89881b51b269fb487f3ce6ca10cd"
        ),
        .binaryTarget(
            name: "libavfilter",
            url: "https://github.com/dsa28s/ffmpeg-ios-spm/releases/download/20250708_172051/libavfilter-ios@20250708_172051.zip",
            checksum: "813043efe2e34aab1247ff1985f3db168c9c7a56e95812f9e996326b77ec77eb"
        ),
        .binaryTarget(
            name: "libavformat",
            url: "https://github.com/dsa28s/ffmpeg-ios-spm/releases/download/20250708_172051/libavformat-ios@20250708_172051.zip",
            checksum: "5df567ec299fc58b1496c96feb77227e36189e7e8b22aef6ab8cbbe08192daba"
        ),
        .binaryTarget(
            name: "libavutil",
            url: "https://github.com/dsa28s/ffmpeg-ios-spm/releases/download/20250708_172051/libavutil-ios@20250708_172051.zip",
            checksum: "5e0ec3135162fa0ae01461a7d5f0ac175601cb91975a10c002f5a1e05f07fe8d"
        ),
        .binaryTarget(
            name: "libswresample",
            url: "https://github.com/dsa28s/ffmpeg-ios-spm/releases/download/20250708_172051/libswresample-ios@20250708_172051.zip",
            checksum: "45001a4b5292b5d970c247cc581844ad83801949de700cb908ec66fb77924b55"
        ),
        .binaryTarget(
            name: "libswscale",
            url: "https://github.com/dsa28s/ffmpeg-ios-spm/releases/download/20250708_172051/libswscale-ios@20250708_172051.zip",
            checksum: "fc5b228738ad99737ee33cd7adab7627446369915f214d38840f9ae8589b6938"
        ),
    ]
)
