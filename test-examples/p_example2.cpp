#include <omp.h>
#include <stdio.h>

int global;

void bar() {
    int a = global;
    a++;
}

void foo() {
    #pragma omp parallel for default(shared)
    {
       for(int i = 0; i <  10; i++) {
             bar();
       }
    }
}

int main(){
    foo();
    return 0;
}