#include "../testlib.h"
#include <cassert>

using namespace std;
ofstream outfile;

void begin_gen();

int main()
{
    cout << 12 << endl;
    string filename = "out/12.in";
    outfile.open(filename);
    begin_gen();
    outfile.close();
}

void begin_gen()
{
    outfile << 0 << ' ' << 0 << '\n';
}