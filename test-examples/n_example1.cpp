#include <omp.h>
#include <stdio.h>

int a ,b ,c;

void foo() {
    a = 1;
    b = 2;
    c = 3;
    int d = 0;
    #pragma omp parallel default(shared)
    {
        c = a + b;
        d = c + 3;
    }
}

int main(){
    printf("OpenMP : Positive Example 1 \n");
    foo();
    return 0;
}