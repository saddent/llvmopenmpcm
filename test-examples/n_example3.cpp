#include <omp.h>
#include <stdio.h>

int a, b, c, d;

void foo() {
    int e, f, i;
    i = 0;
    a = 1;
    b = 2;
    c = 3;
    d = 4;
    e = 5;
    f = 6;
    #pragma omp parallel default(shared)
        if(i == 0) {
            int x = a + b;
            int v = e + f;
        } else {
            int y = a + b;
            int z = e + f;
        }
}

int main(){
    printf("OpenMP : Positive Example 2 \n");
    foo();
    return 0;
}