# Bits,Bytes,and Integers

因为时间有限，而且最近有考试，所以前面的就没有写，
读者来试试下面的puzzles，测试下吧，估计你会做错，
如果都明白了，应该计算机整数表示就没太大的问题了。

Integer C Puzzles

```c
// foo bar表示任意函数。
int x = foo();
int y = bar();
unsigned ux = x;
unsigned uy = y;
```

```
* x < 0             ->  ((x*2)<0)       // false
*                   ->  ux > 0          // true
* x & 7 == 7        ->  (x<<30) < 0     // true 后三位是1,左移30位，最高位一定是1
*                   ->  ux > -1         // false -1的补码是0xffffffff
* x > y             ->  -x < -y         // false 如果y=TMin,那么-y=TMin
*                   ->  x * x >= 0      // false
* x > 0 && y > 0    ->  x + y > 0       // false
* x >= 0            ->  -x <= 0         // true
* x <= 0            ->  -x >= 0         // false 所有正数可以表示为负数，但是有一个负数（TMin）不能表示为正数 
*                   ->  (x|-x)>>31==-1  // false x为非0数成立    
```

补充特例：
TMin = 1 0 ... 0    (32位有符号整数的最小值)
取反加一还是TMin。   (即计算机补码求负数)

c语言limit.h定义如下：
```c
    #define INT_MAX 2147483647
    #define INT_MIN (-INT_MAX - 1)
```
