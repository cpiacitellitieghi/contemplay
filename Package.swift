// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "BancoCotasApp",
    platforms: [
        .iOS(.v15)
    ],
    dependencies: [
        // Dependências do projeto
    ],
    targets: [
        .target(
            name: "BancoCotasApp",
            dependencies: [],
            path: "Sources"
        )
    ]
)
