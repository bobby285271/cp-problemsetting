#include "../testlib.h"
#include <cassert>

using namespace std;
ofstream outfile;

void begin_gen();

int main()
{
    cout << 11 << endl;
    string filename = "out/11.in";
    outfile.open(filename);
    begin_gen();
    outfile.close();
}

void begin_gen()
{
    outfile << 1000000000 << ' ' << 1000000000 << '\n';
}