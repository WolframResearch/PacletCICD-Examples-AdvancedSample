BeginPackage[ "SamplePublisher`AdvancedSamplePaclet`" ];

(* Exported Symbols *)
AddOne::usage = "AddOne[x] adds one to x.";
AddTwo::usage = "AddTwo[x] adds two to x.";
AddThree::usage = "AddThree[x] adds three to x.";

(* Definitions shared between subpackages: *)
<<SamplePublisher`AdvancedSamplePaclet`Common`;

(* Each exported function has its own subpackage: *)
<<SamplePublisher`AdvancedSamplePaclet`AddOne`;
<<SamplePublisher`AdvancedSamplePaclet`AddTwo`;
<<SamplePublisher`AdvancedSamplePaclet`AddThree`;

EndPackage[ ];
