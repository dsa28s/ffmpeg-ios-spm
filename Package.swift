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
            url: "https://github.com/dsa28s/ffmpeg-ios-spm/releases/download/20250702_155432/ffmpegkit-ios@20250702_155432.zip",
            checksum: "8cdb3a493fcc32870bb453944689f34e4279c2ea0fabfa7ac157c655e17faae8"
        ),
        .binaryTarget(
            name: "libavcodec",
            url: "https://github.com/dsa28s/ffmpeg-ios-spm/releases/download/20250702_155432/ffmpegkit-ios@20250702_155432.zip",
            checksum: "8cdb3a493fcc32870bb453944689f34e4279c2ea0fabfa7ac157c655e17faae8"
        ),
        .binaryTarget(
            name: "libavdevice",
            url: "https://github.com/dsa28s/ffmpeg-ios-spm/releases/download/20250702_155432/ffmpegkit-ios@20250702_155432.zip",
            checksum: "8cdb3a493fcc32870bb453944689f34e4279c2ea0fabfa7ac157c655e17faae8"
        ),
        .binaryTarget(
            name: "libavfilter",
            url: "https://github.com/dsa28s/ffmpeg-ios-spm/releases/download/20250702_155432/ffmpegkit-ios@20250702_155432.zip",
            checksum: "8cdb3a493fcc32870bb453944689f34e4279c2ea0fabfa7ac157c655e17faae8"
        ),
        .binaryTarget(
            name: "libavformat",
            url: "https://github.com/dsa28s/ffmpeg-ios-spm/releases/download/20250702_155432/ffmpegkit-ios@20250702_155432.zip",
            checksum: "8cdb3a493fcc32870bb453944689f34e4279c2ea0fabfa7ac157c655e17faae8"
        ),
        .binaryTarget(
            name: "libavutil",
            url: "https://github.com/dsa28s/ffmpeg-ios-spm/releases/download/20250702_155432/ffmpegkit-ios@20250702_155432.zip",
            checksum: "8cdb3a493fcc32870bb453944689f34e4279c2ea0fabfa7ac157c655e17faae8"
        ),
        .binaryTarget(
            name: "libswresample",
            url: "https://github.com/dsa28s/ffmpeg-ios-spm/releases/download/20250702_155432/ffmpegkit-ios@20250702_155432.zip",
            checksum: "8cdb3a493fcc32870bb453944689f34e4279c2ea0fabfa7ac157c655e17faae8"
        ),
        .binaryTarget(
            name: "libswscale",
            url: "https://github.com/dsa28s/ffmpeg-ios-spm/releases/download/20250702_155432/ffmpegkit-ios@20250702_155432.zip",
            checksum: "8cdb3a493fcc32870bb453944689f34e4279c2ea0fabfa7ac157c655e17faae8"
        ),
    ]
)
