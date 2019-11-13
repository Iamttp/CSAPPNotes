# Floating Point

浮点数有点无聊呀，跳过了不少，如果有时间补上吧（估计是不会再补上了）

浮点数：`(-1)^S*M*2^E`

S 符号位，M 尾数，E 2的E次幂

IEEE 标准

单精度（32位）:
s 1位
exp 8位
frac 23位

双精度（64位）：
s 1位
exp 11位
frac 52位

比如：
`float F = 15213`
那么：
```
M =     1.1101101101101
frac =    11011011011010...0

E = 13
bias = 127
exp = 140 = 10001100

S = 0

result = 0 10001100 11011011011010...0
```

---

继续做题吧！

```c
int x = ...;
float f = ...;
double d = ...;
```

```
* x == (int)(float)x        // false
* x == (int)(double)x       // true
* f == (float)(double)f     // true
* d == (double)(float)d     // false
* f == -(-f)                // true 只改变了符号位
* 2/3 == 2/3.0              // false
* d < 0.0   =>  ((d*2)<0.0) // true 即时溢出到负无穷也是小于
* d > f     =>  -f > -d     // true
* d * d >= 0.0              // true
* (d+f)-d == f              // false
```

