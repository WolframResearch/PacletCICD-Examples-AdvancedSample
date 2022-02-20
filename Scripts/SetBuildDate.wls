#!/usr/bin/env wolframscript

$pacletDir      = DirectoryName[ $InputFileName, 2 ];
$pacletInfoFile = FileNameJoin @ { $pacletDir, "PacletInfo.wl" };

Export[
    $pacletInfoFile,
    TemplateApply[ File @ $pacletInfoFile, <| "BuildDate" -> DateString[ ] |> ],
    "String"
]
