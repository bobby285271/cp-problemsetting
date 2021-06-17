#include "../testlib.h"
#include <cassert>

using namespace std;
ofstream outfile;

void begin_gen();

int main()
{
    for (int i = 2; i <= 10; i++)
    {
        cout << i << endl;
        string filename = "out/" + to_string(i) + ".in";
        outfile.open(filename);
        begin_gen();
        outfile.close();
    }
}

void begin_gen()
{
    outfile << rnd.next(0, 1000000000) << ' ' << rnd.next(0, 1000000000) << '\n';
}