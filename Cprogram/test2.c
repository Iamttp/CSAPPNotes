/**
 * 3.3的一些测试代码，对照着test2.s看
*/

#include<stdio.h>

long incr(long *p, long val) {
    long x = *p;
    long y = x + val;
    *p = y;
    return x;
}

long call_incr() { 
    long v1 = 15213;
    long v2 = incr(&v1,3000);
    return v1 + v2;
}

long func(long x) {
    if(x <= 1)
        return 1;
    return func(x-1) + func(x-2);
}

int main(){
    printf("hello world\n");
    return 0;
}