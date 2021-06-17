#include "testlib.h"

int main(int argc, char *argv[])
{
    registerTestlibCmd(argc, argv);
    int jans = ans.readInt();
    int pans = ouf.readInt();
    if (jans == pans)
    {
        quitf(_ok, "OK, the answer is correct.");
    }
    else
    {
        quitf(_wa, "Expect %d, found %d.", jans, pans);
    }
}
