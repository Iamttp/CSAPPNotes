第一个直接是根据getbuf函数执行ret指令后，就会从%rsp+40处获取返回地址，只要我们修改这个返回地址，改为touch1的地址，就能使程序返回touch1，而不是test。

后面的找时间补上吧。

参考博客： `https://blog.csdn.net/weixin_41256413/article/details/80463280`
