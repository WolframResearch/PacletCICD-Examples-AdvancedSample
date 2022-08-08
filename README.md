# PacletCICD-Examples-AdvancedSample

This is a sample Paclet used for [PacletCICD](https://github.com/WolframResearch/PacletCICD) documentation examples. This Paclet is meant to demonstrate more advanced CI/CD workflows that involves: 

* standard Paclet checks
* multi-platform compilation
* automated tests
* separate workflows for pull requests and releases

A local copy can be retrieved in Wolfram Language using the following steps.

Install the [PacletCICD](https://github.com/WolframResearch/PacletCICD) Paclet:
```Mathematica
PacletInstall[ResourceObject["Wolfram/PacletCICD"]]
```

Load the necessary context:
```Mathematica
Needs["Wolfram`PacletCICD`"]
```

Get a directory containing this repository's source code:
```Mathematica
ExampleDirectory["AdvancedSample"]
```