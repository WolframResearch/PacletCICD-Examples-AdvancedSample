VerificationTest[
    Needs[ "MyPublisher`SamplePaclet`" ],
    Null,
    TestID -> "AddTwo-Initialization"
]

VerificationTest[
    AddTwo[ 5 ],
    7,
    TestID -> "AddTwo-Integer"
]

VerificationTest[
    AddTwo[ x ],
    x + 2,
    TestID -> "AddTwo-Symbol"
]