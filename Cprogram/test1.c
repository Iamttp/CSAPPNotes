#include<stdio.h>

int sum_test(int a,int b){
    return a+b;
}

int main(){
    int a, b, c;
    a = 5;
    b = 10;
    c = sum_test(a,b);
    printf("%d\n",c);
    return 0;
}