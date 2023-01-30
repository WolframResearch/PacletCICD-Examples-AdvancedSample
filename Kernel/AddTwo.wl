BeginPackage[ "SamplePublisher`AdvancedSamplePaclet`AddTwo`" ];
Needs[ "SamplePublisher`AdvancedSamplePaclet`" ];
Needs[ "SamplePublisher`AdvancedSamplePaclet`Common`" ];
Begin[ "`Private`" ];

AddTwo::NotInteger = "Argument `1` is expected to be an integer.";
AddTwo[ x_Integer ] := adder @ x;
AddTwo[ x_ ] := ResourceFunction[ "MessageFailure" ][ AddTwo::NotInteger, x ];

(* Note that adder is unique to this file since it is not declared in Common.wl *)
adder := adder = LibraryFunctionLoad[ $libraryFile, "AddTwo", { Integer }, Integer ];

End[ ];
EndPackage[ ];