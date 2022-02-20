#include "WolframLibrary.h"
#include "AddOne.c"
#include "AddTwo.c"

DLLEXPORT mint WolframLibrary_getVersion() {
    return WolframLibraryVersion;
}

DLLEXPORT int WolframLibrary_initialize(WolframLibraryData libData) {
    return 0;
}

DLLEXPORT void WolframLibrary_uninitialize(WolframLibraryData libData) {
    return;
}

DLLEXPORT int constantzero(WolframLibraryData libData,
                           mint Argc, MArgument *Args, MArgument Res) {
    MArgument_setInteger(Res, 0);
    return LIBRARY_NO_ERROR;
}

DLLEXPORT int AddOne(WolframLibraryData libData,
                     mint Argc, MArgument *Args, MArgument Res) {
    mint I0;
    mint I1;
    I0 = MArgument_getInteger(Args[0]);
    I1 = addOne(I0);
    MArgument_setInteger(Res, I1);
    return LIBRARY_NO_ERROR;
}

DLLEXPORT int AddTwo(WolframLibraryData libData,
                     mint Argc, MArgument *Args, MArgument Res) {
    mint I0;
    mint I1;
    I0 = MArgument_getInteger(Args[0]);
    I1 = addTwo(I0);
    MArgument_setInteger(Res, I1);
    return LIBRARY_NO_ERROR;
}
