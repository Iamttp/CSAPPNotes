#include<stdio.h>

long absdiff(long x,long y){
    long result;
    if(x > y)
        return x - y;
    else
        return y - x;
    return result;
}

// absdiff 的汇编写法
long absdiff_j(long x,long y){
    long result;
    int ntest = x <= y;
    if(ntest)
        goto Else;
    result = x - y;
    goto Done;
Else:
    result = y - x;
Done:
    return result;
}

int switch_test_first(int x) {
    int res ;
    switch( x ){
        case 100 :
            res = 1 ;
            break ;
        case 102 :
            res = 2 ;
            break ;
        case 103 :
            res = 3 ;
            break ;
        case 104 :
            res = 4 ;
            break ;
        case 105 :
            res = 5 ;
            break ;
        case 106 :
            res = 6 ;
            break ;
    }
    return res ;
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
    printf("hello world\n");
    return 0;
}