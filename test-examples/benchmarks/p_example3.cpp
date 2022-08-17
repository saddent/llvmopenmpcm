#include <omp.h>
#include <stdio.h>

/// The bar call should not be relocated outside the parallel for loop
int foo() {
    int a, b, c, d, e, f, i;
    i = 0;
    a = 1;
    b = 2;
    c = 3;
    d = 4;
    e = 5;
    f = 6;
    #pragma omp parallel
    {
        if(i == 0) {
            int x = a + b;
            int v = e + f;
        } else {
            int y = a + b;
            int z = e + f;
        }
    }
    return 0;
}

int main(){
    printf("OpenMP : Positive Example 3 \n");
    foo();
    return 0;
}
