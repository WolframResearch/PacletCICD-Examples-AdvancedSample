BeginPackage[ "SamplePublisher`AdvancedSamplePaclet`AddOne`" ];
Needs[ "SamplePublisher`AdvancedSamplePaclet`" ];
Needs[ "SamplePublisher`AdvancedSamplePaclet`Common`" ];
Begin[ "`Private`" ];

AddOne[ x_Integer ] := adder @ x;

(* Note that adder is unique to this file since it is not declared in Common.wl *)
adder := adder = LibraryFunctionLoad[ $libraryFile, "AddOne", { Integer }, Integer ];

End[ ];
EndPackage[ ];