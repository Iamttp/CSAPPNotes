bomb        我的任务记录
   bomb.d   `objdump -d bomb > bomb.d`得到的反汇编文件
   in.txt   输入文件，答案
bomb.tar    原始压缩包，解压方法`tar xvf bomb.tar`
README.md   当前文件

1. `gdb bomb -q` 进入调试
2. `(gdb) set args in.txt` 设置调试参数为in.txt
3. `(gdb) b phase_3` 设置断点， `r` 运行
4. `(gdb) layout regs` 或者`(gdb) layout asm`查看寄存器和反汇编代码
5. layout窗口下

>  
   `Ctrl + L`：刷新窗口
   `Ctrl + x`，再按1：单窗口模式，显示一个窗口
   `Ctrl + x`，再按2：双窗口模式，显示两个窗口
   `Ctrl + x`，再按a：回到传统模式，即退出layout，回到执行layout之前的调试窗口。

过了两关，头有点晕，最近又有考试，先这样吧，抽时间来补上，too。

---

2019.11.19，刚吃完中午饭，听着`In Motion`我又来了，昨天刚考完汇编，今天来解决剩下的bomb。

1. `(gdb) ni` next instruction缩写，表示下一条指令
2. `(gdb) si` step instruction缩写，表示下一条指令
3. 直接回车会重复上一个命令。
4. `x/3uh 0x54320` 表示，从内存地址0x54320读取内容，h表示以双字节为一个单位，3表示输出三个单位，u表示按十六进制显示。
5. `p $eax` 打印寄存器的值

不行了，后面太难了。先这样吧/W\

参考文章： `https://blog.csdn.net/allenlinrui/article/details/5964046`

参考文章： `https://blog.csdn.net/huqinweI987/article/details/23548239`

参考文章： `https://blog.csdn.net/The_V_/article/details/46842337#commentBox`