#!/usr/bin/env wolframscript

$pacletDir      = DirectoryName[ $InputFileName, 2 ];
$pacletInfoFile = FileNameJoin @ { $pacletDir, "PacletInfo.wl" };

Export[
    $pacletInfoFile,
    StringReplace[
        ReadString @ $pacletInfoFile,
        "$BuildDate$" -> DateString[ ]
    ],
    "String"
]
