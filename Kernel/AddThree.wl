BeginPackage[ "SamplePublisher`AdvancedSamplePaclet`AddThree`" ];
(* This file does not need definitions from Common.wl, but it does use exported symbols: *)
Needs[ "SamplePublisher`AdvancedSamplePaclet`" ];
Begin[ "`Private`" ];

AddThree::NotInteger = "Argument `1` is expected to be an integer.";
AddThree[ x_Integer ] := adder @ x;
AddThree[ x_ ] := ResourceFunction[ "MessageFailure" ][ AddThree::NotInteger, x ];

(* Note that adder is unique to this file *)
adder = AddTwo @* AddOne;

End[ ];
EndPackage[ ];