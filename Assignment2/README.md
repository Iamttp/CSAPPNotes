bomb        我的任务记录
   bomb.d   `objdump -d bomb > bomb.d`得到的反汇编文件
   in.txt   输入文件，答案
bomb.tar    原始压缩包，解压方法`tar xvf bomb.tar`
README.md   当前文件

1. `gdb bomb -q` 进入调试
2. `(gdb) set args in.txt` 设置调试参数为in.txt
3. `(gdb) b phase_3` 设置断点， `r` 运行
4. `(gdb) layout regs` 或者`(gdb) layout asm`查看寄存器和反汇编代码
5. 。。。

过了两关，头有点晕，最近又有考试，先这样吧，抽时间来补上，too。

参考文章： `https://blog.csdn.net/allenlinrui/article/details/5964046`
参考文章： `https://blog.csdn.net/huqinweI987/article/details/23548239`
参考文章： `https://blog.csdn.net/The_V_/article/details/46842337#commentBox`