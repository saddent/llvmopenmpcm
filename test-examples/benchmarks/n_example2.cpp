#include <omp.h>
#include <stdio.h>

int global;

void bar() {
    global++;
}

/// The bar call should not be relocated outside the parallel for loop
int foo() {
    #pragma omp parallel for
    {
       for(int i = 0; i <  10; i++) {
             bar();
       }
    }
    return 0;
}

int main(){
    printf("OpenMP : Negative Example 2 \n");
    foo();
    return 0;
}
