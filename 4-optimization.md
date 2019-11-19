# Program Optimization

## Overview -- 简介

编写高效的程序：

1. 选择一组适当的算法和数据结构
2. 编写出编译器有效优化以产生高效可执行的源代码
3. 对于处理量特别大的计算，将一个任务分成多个部分，这些部分可以在多核和多处理器的某种组合上并行的计算

表示程序性能，引入度量标准`Cycles Per Element(CPE)`。


## Generally Useful Optimization -- 通用且有用的优化 

Code motion/precomputation -- 代码移动

将执行多次但计算结果不会改变的计算移动到代码前面

Strength reduction -- 减少过程调用

Sharing of common subexpression -- 公共子表达式的共享

Removing unnecessary procedure calls -- 消除不必要的内存引用

## Optimization Blockers -- 阻碍优化的情况 

Procedure calls -- 过程调用
Memory aliasing -- 内存别名使用

## Exploiting Instruction-Level Parallelism -- 利用指令级并行
## Dealing with Conditionals -- 处理条件

