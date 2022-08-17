#include <omp.h>
#include <stdio.h>

int foo() {
    int a = 1;
    int b = 2;
    int c = 3;
    int d = 0;
    #pragma omp parallel
    {
        c = a + b;
        d = c + 3;
    }
    return 0;
}

int main(){
    printf("OpenMP : Positive Example 1 \n");
    foo();
    return 0;
}