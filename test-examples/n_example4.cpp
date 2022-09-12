#include <omp.h>
#include <stdio.h>

void foo() {
    int j = 1;
    int k = 0;
    #pragma omp for default(shared) firstprivate(j)
    for (int i = 0; i < 10; i++)
    {
        k = j + 1;// computation j+1 should not b moved out of the loop
    }
}

int main(int argc, char const *argv[])
{
    foo();
    return 0;
}
