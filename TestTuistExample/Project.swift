import ProjectDescription

let project = Project(
    name: "TestTuistExample",
    targets: [
        Target(
            name: "Example",
            platform: .iOS,
            product: .app,
            bundleId: "",
            deploymentTarget: .iOS(targetVersion: "13.0", devices: .iphone),
            sources: ["../A/B/**"],
            dependencies: []
        )
    ],
    schemes: [
        Scheme(
            name: "Example",
            shared: true,
            buildAction: .buildAction(targets: ["Example"]),
            runAction: .runAction(executable: "Example")
        )
    ],
    additionalFiles: [],
    resourceSynthesizers: []
)
