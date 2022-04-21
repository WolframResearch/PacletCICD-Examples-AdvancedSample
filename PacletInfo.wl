PacletObject[ <|
    "Name"             -> "SamplePublisher/AdvancedSamplePaclet",
    "Description"      -> "A complete sample Paclet that includes library resources",
    "Creator"          -> "Sample Author",
    "BuildDate"        -> "$BuildDate$",
    "Version"          -> "1.1.0",
    "WolframVersion"   -> "13.0+",
    "License"          -> "MIT",
    "PublisherID"      -> "SamplePublisher",
    "SourceControlURL" -> "https://github.com/rhennigan/PacletCICD-Examples-AdvancedSample",
    "Extensions"       -> {
        {
            "Kernel",
            "Root"    -> "Kernel",
            "Context" -> { "SamplePublisher`AdvancedSamplePaclet`" },
            "Symbols" -> {
                "SamplePublisher`AdvancedSamplePaclet`AddOne",
                "SamplePublisher`AdvancedSamplePaclet`AddTwo"
            }
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