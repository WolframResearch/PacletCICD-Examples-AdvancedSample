VerificationTest[
    Needs[ "MyPublisher`SamplePaclet`" ],
    Null,
    TestID -> "AddOne-Initialization"
]

VerificationTest[
    AddOne[ 5 ],
    6,
    TestID -> "AddOne-Integer"
]

VerificationTest[
    AddOne[ x ],
    x + 1,
    TestID -> "AddOne-Symbol"
]