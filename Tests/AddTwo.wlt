VerificationTest[
    Needs[ "SamplePublisher`AdvancedSamplePaclet`" ],
    Null,
    TestID -> "AddTwo-Initialization"
]

VerificationTest[
    AddTwo @ 1,
    3,
    TestID -> "AddTwo-1"
]

VerificationTest[
    AddTwo @ 2,
    4,
    TestID -> "AddTwo-2"
]

VerificationTest[
    AddTwo[ 2^64 ],
    HoldPattern[ LibraryFunction ][ ___ ][ 2^64 ],
    { LibraryFunction::cfsa },
    SameTest -> MatchQ,
    TestID -> "AddTwo-Integer-Overflow"
]