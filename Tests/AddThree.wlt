VerificationTest[
    Needs[ "SamplePublisher`AdvancedSamplePaclet`" ],
    Null,
    TestID -> "AddThree-Initialization"
]

VerificationTest[
    AddThree @ 1,
    4,
    TestID -> "AddThree-1"
]

VerificationTest[
    AddThree @ 2,
    5,
    TestID -> "AddThree-2"
]

VerificationTest[
    AddThree[ 2^64 ],
    Failure[ "AddTwo::NotInteger", _ ],
    { LibraryFunction::cfsa, AddTwo::NotInteger },
    SameTest -> MatchQ,
    TestID -> "AddThree-Integer-Overflow"
]

VerificationTest[
    AddThree[ x ],
    Failure[ "AddThree::NotInteger", _ ],
    { AddThree::NotInteger },
    SameTest -> MatchQ,
    TestID -> "AddThree-NotInteger"
]