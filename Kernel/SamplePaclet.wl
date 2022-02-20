BeginPackage[ "MyPublisher`SamplePaclet`" ];

AddOne;
AddTwo;

Begin[ "`Private`" ];

AddOne[ x_Integer ] := addOne @ x;
AddTwo[ x_Integer ] := addTwo @ x;

addOne := addOne = LibraryFunctionLoad[ $lib, "AddOne", { Integer }, Integer ];
addTwo := addTwo = LibraryFunctionLoad[ $lib, "AddTwo", { Integer }, Integer ];

$lib = FileNameJoin @ {
    DirectoryName[ $InputFileName, 2 ],
    "LibraryResources",
    $SystemID,
    "MyLibrary." <> Internal`DynamicLibraryExtension[ ]
};

End[ ];

EndPackage[ ];
