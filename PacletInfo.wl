PacletObject[ <|
    "Name"             -> "MyPublisher/SamplePaclet",
    "Description"      -> "A complete sample Paclet",
    "Creator"          -> "Example Author",
    "BuildDate"        -> "`BuildDate`",
    "Version"          -> "1.0.0",
    "WolframVersion"   -> "13.0+",
    "License"          -> "MIT",
    "PublisherID"      -> "MyPublisher",
    "SourceControlURL" -> "https://github.com/rhennigan/PacletCICD-Examples-CompiledLibrary",
    "Extensions"       -> {
        {
            "Kernel",
            "Root"    -> "Kernel",
            "Context" -> { "MyPublisher`SamplePaclet`" },
            "Symbols" -> { "MyPublisher`SamplePaclet`AddOne" }
        },
        {
            "Documentation",
            "Root"     -> "Documentation",
            "Language" -> "English"
        },
        {
            "LibraryLink",
            "Root" -> "LibraryResources"
        },
        {
            "Asset",
            "Assets" -> { { "License", "./LICENSE" } }
        }
    }
|> ]