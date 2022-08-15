#!/usr/bin/env wolframscript

If[ FailureQ @ FindFile[ "Wolfram`PacletCICD`" ],
    PacletInstall @ ResourceObject[ "Wolfram/PacletCICD" ]
];

Needs[ "Wolfram`PacletCICD`" ];
Needs[ "CCompilerDriver`" ];

$pacletDir = DirectoryName[ $InputFileName, 2 ];
$sourceDir = FileNameJoin @ { $pacletDir, "Source" };
$targetDir = FileNameJoin @ { $pacletDir, "LibraryResources", $SystemID };

ConsoleNotice[ "Build source directory: " <> $sourceDir ];
ConsoleNotice[ "Build target directory: " <> $targetDir ];

$built = CCompilerDriver`CreateLibrary[
    FileNames[ "*.c", $sourceDir ],
    "SampleLibrary",
    "TargetDirectory"   -> $targetDir,
    "CleanIntermediate" -> True
];

If[ FileExistsQ @ $built,
    $built,
    ConsoleError[ "Failed to build the library.", "Fatal" -> True ]
]