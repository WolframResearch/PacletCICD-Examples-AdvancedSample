VerificationTest[
    Needs[ "SamplePublisher`AdvancedSamplePaclet`" ],
    Null,
    TestID -> "AddOne-Initialization"
]

VerificationTest[
    AddOne @ 1,
    2,
    TestID -> "AddOne-1"
]

VerificationTest[
    AddOne @ 2,
    3,
    TestID -> "AddOne-2"
]

VerificationTest[
    AddOne[ 2^64 ],
    HoldPattern[ LibraryFunction ][ ___ ][ 2^64 ],
    { LibraryFunction::cfsa },
    SameTest -> MatchQ,
    TestID -> "AddOne-Integer-Overflow"
]

VerificationTest[
    AddOne[ x ],
    Failure[ "AddOne::NotInteger", _ ],
    { AddOne::NotInteger },
    SameTest -> MatchQ,
    TestID -> "AddOne-NotInteger"
]