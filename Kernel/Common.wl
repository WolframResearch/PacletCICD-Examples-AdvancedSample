BeginPackage[ "SamplePublisher`AdvancedSamplePaclet`Common`" ];

(* Symbols shared across package files, but not publicly exported: *)
$libraryFile;

Begin[ "`Private`" ];

$thisPacletLocation := $thisPacletLocation =
    PacletObject[ "SamplePublisher/AdvancedSamplePaclet" ][ "Location" ];

$libraryFile := FileNameJoin @ {
    $thisPacletLocation,
    "LibraryResources",
    $SystemID,
    "SampleLibrary." <> Internal`DynamicLibraryExtension[ ]
};

End[ ];
EndPackage[ ];