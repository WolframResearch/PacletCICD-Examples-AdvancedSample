BeginPackage[ "SamplePublisher`AdvancedSamplePaclet`AddOne`" ];
Needs[ "SamplePublisher`AdvancedSamplePaclet`" ];
Needs[ "SamplePublisher`AdvancedSamplePaclet`Common`" ];
Begin[ "`Private`" ];

AddOne::NotInteger = "Argument `1` is expected to be an integer.";
AddOne[ x_Integer ] := adder @ x;
AddOne[ x_ ] := ResourceFunction[ "MessageFailure" ][ AddOne::NotInteger, x ];

(* Note that adder is unique to this file since it is not declared in Common.wl *)
adder := adder = LibraryFunctionLoad[ $libraryFile, "AddOne", { Integer }, Integer ];

End[ ];
EndPackage[ ];