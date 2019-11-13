#include<stdio.h>

int sum_test(int a,int b){
    return a+b;
}

long absdiff(long x,long y){
    long result;
    if(x > y)
        return x - y;
    else
        return y - x;
    return result;
}

int gt(long x,long y){
    return x > y;
}

long arith(long x,long y,long z){
    long t1 = x+y;
    long t2 = z+t1;
    long t3 = x+4;
    long t4 = y*48;
    long t5 = t3+t4;
    long rval = t2*t5;
    return rval;
}

int main(){
    int a, b, c;
    a = 5;
    b = 10;
    c = sum_test(a,b);
    printf("%d\n",c);
    return 0;
}