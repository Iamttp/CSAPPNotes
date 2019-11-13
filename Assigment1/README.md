datalab-handout     我的任务记录
datalab-handout.tar 原压缩包，解压方法`tar xvf datalab-handout.tar`
README.md           该文件

错误解决：

1) 出现该错误，执行`sudo apt-get install gcc-multilib`

![avatar](1.png)

小技巧：

1） 常数只允许(only 0x0 - 0xff allowed)

>
    1 << 31;    // 0x80...0

    int my_0xAAAA = 0xaa | (0xaa << 8);
    int my_0xAAAAAAAA = my_0xAAAA | (my_0xAAAA << 16); // 构造0xAAAAAAAA
    
2） 得到负数 `neg_x = (~x) + 1;` 但是要考虑`0x80000000`

3） 考虑+-后溢出的处理


头有点晕，最近又有考试，先这样吧，抽时间来补上。

```
14:30@ttp /media/ttp/Windows/Users/ttp/Desktop/ICS/Assigment1/datalab-handout$ -> ./btest
Score   Rating  Errors  Function
 1      1       0       bitXor
 1      1       0       tmin
 1      1       0       isTmax
 2      2       0       allOddBits
 2      2       0       negate
 3      3       0       isAsciiDigit
ERROR: Test conditional(-2147483648[0x80000000],-2147483648[0x80000000],-2147483648[0x80000000]) failed...
...Gives 0[0x0]. Should be -2147483648[0x80000000]
ERROR: Test isLessOrEqual(2147483647[0x7fffffff],-2147483648[0x80000000]) failed...
...Gives 1[0x1]. Should be 0[0x0]
ERROR: Test logicalNeg(-2147483648[0x80000000]) failed...
...Gives 2[0x2]. Should be 0[0x0]
ERROR: Test howManyBits(-2147483648[0x80000000]) failed...
...Gives 0[0x0]. Should be 32[0x20]
ERROR: Test floatScale2(0[0x0]) failed...
...Gives 2[0x2]. Should be 0[0x0]
ERROR: Test floatFloat2Int(0[0x0]) failed...
...Gives 2[0x2]. Should be 0[0x0]
ERROR: Test floatPower2(0[0x0]) failed...
...Gives 2[0x2]. Should be 1065353216[0x3f800000]
Total points: 10/36
```

```
dlc:bits.c:151:bitXor: 7 operators
dlc:bits.c:160:tmin: 1 operators
dlc:bits.c:171:isTmax: Illegal operator (<<)
dlc:bits.c:173:isTmax: 4 operators
dlc:bits.c:188:allOddBits: 7 operators
dlc:bits.c:198:negate: 2 operators
dlc:bits.c:219:isAsciiDigit: 10 operators
dlc:bits.c:230:conditional: 0 operators
dlc:bits.c:249:isLessOrEqual: 9 operators
dlc:bits.c:261:logicalNeg: 0 operators
dlc:bits.c:276:howManyBits: 0 operators
dlc:bits.c:291:floatScale2: 0 operators
dlc:bits.c:306:floatFloat2Int: 0 operators
dlc:bits.c:322:floatPower2: 0 operators
```