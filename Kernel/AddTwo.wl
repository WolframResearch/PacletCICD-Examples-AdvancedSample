BeginPackage[ "SamplePublisher`AdvancedSamplePaclet`AddTwo`" ];
Needs[ "SamplePublisher`AdvancedSamplePaclet`" ];
Needs[ "SamplePublisher`AdvancedSamplePaclet`Common`" ];
Begin[ "`Private`" ];

AddTwo[ x_Integer ] := adder @ x;

(* Note that adder is unique to this file since it is not declared in Common.wl *)
adder := adder = LibraryFunctionLoad[ $libraryFile, "AddTwo", { Integer }, Integer ];

End[ ];
EndPackage[ ];