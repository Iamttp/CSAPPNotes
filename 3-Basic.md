Machine-Level Programming I: Basic

英特尔发展史 -- 大事记

名称        日期        晶体管      MHz
8086        1978        29K         5-10
386         1985        275K        16-33
Pentium 4E  2004        125M        2800-3800
Core 2      2006        291M        1060-3500
Core i7     2008        731M        1700-3900

`gcc -Og -S sum.c`

-S: 让编译程序在生成汇编语言输出之后立刻停止。

-O0：（optimize）不做任何优化，这是默认的编译选项。

-Og: 使用全局优化，启用不会影响调试的优化。

`objdump -d sum > sum.d` 反汇编sum中的需要执行指令的那些section，并将结果重定向到sum.d

启用gdb`gdb sum`

在(gdb)后面输入`disassemble sumstore`反汇编sumstore函数

---

x86-64寄存器:
`%r` 64位 `%e` 32位

![avatar](3-1.png)

![avatar](3-2.png)
