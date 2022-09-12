#include <omp.h>
#include <stdio.h>

void foo() {
    int a = 1;
    int b = 2;
    int c = 3;
    int d = 0;
    #pragma omp parallel default(shared) private(a, b, c, d)
    {
        c = a + b;
        d = c + 3;
    }
}

int main(){
    foo();
    return 0;
}