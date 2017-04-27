# sersync

Synchronize files and folders between servers -using inotiy and rsync with c++ 

服务器实时同步文件，服务器镜像解决方案

这个工程是原sersync项目在[google code](http://code.google.com/p/sersync/)的拷贝, 在此基础上进行源码分析与注释, 可能会进行二次开发, 仅做学习之用.

参考文章

[Sersync使用指南](http://www.linuxidc.com/Linux/2012-02/53572.htm)

[git官方文档Issues](https://github.com/xiqingongzi/sersync/issues)

------

## 编译步骤

CentOS7下编译成功.

首先下载boost库, 解压, 得到`boost_1_64_0`.

将其根目录下的`boost`子目录拷贝到`/usr/local/include`目录下, 作为头文件引用.

然后按照[Getting Started on Unix Variants](http://www.boost.org/doc/libs/1_64_0/more/getting_started/unix-variants.html#easy-build-and-install)中的指示安装boost库, 作为共享库so使用, 命令如下

```
$ cd path/to/boost_1_64_0
$ ./bootstrap.sh --help
## 配置选项, 相当于configure
$ ./bootstrap.sh --prefix=/usr/local
## 相当于make
$ ./b2
## 相当于make install
$ ./b2 install
```

完成后boost库将出现在/usr/local/lib目录下. 然后可以使用`make`进行操作

```
## 将在build/Release目录下生成.o等中间文件, 并且dist目录下生成sersync2可执行文件
$ make
## 清理build目录和dist目录下的文件
$ make clean
```

## 使用方法

目前不想写这个, 网上有很多相关教程, 请自行搜索.