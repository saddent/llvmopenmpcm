#include <omp.h>
#include <stdio.h>

int global;

void bar() {
    int a = global;
    a++;
}

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
    printf("OpenMP : Example 1 \n");
    foo();
    return 0;
}