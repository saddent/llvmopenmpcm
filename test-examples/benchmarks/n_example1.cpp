#include <omp.h>
#include <stdio.h>

int a ,b ,c;

int foo() {
    a = 1;
    b = 2;
    c = 3;
    int d = 0;
    #pragma omp parallel
    {
        c = a + b;
        d = c + 3;
    }
    return 0;
}

int main(){
    printf("OpenMP : Negative Example 1 \n");
    foo();
    return 0;
}
