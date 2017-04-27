首先下载boost库, 解压, 得到`boost_1_64_0`.

将其根目录下的`boost`子目录拷贝到`/usr/local/include`目录下, 作为头文件引用.

按照[Getting Started on Unix Variants](http://www.boost.org/doc/libs/1_64_0/more/getting_started/unix-variants.html#easy-build-and-install)中的指示安装boost库, 命令如下

```
$ cd path/to/boost_1_64_0
$ ./bootstrap.sh --help
## 配置选项, 相当于configure
$ ./bootstrap.sh --prefix=/usr/local
## 相当于make
$ ./b2
## 相当于make install, 完成后boost库将出现在/usr/local/lib目录下.
$ ./b2 install
```

boost库安装完成后再执行make, 出现

```
/usr/bin/ld: cannot find -lpthread
/usr/bin/ld: cannot find -lstdc++
/usr/bin/ld: cannot find -lm
/usr/bin/ld: cannot find -lc
collect2: error: ld returned 1 exit status
make[2]: *** [dist/Release/GNU-Linux-x86/sersync2] Error 1
make[2]: Leaving directory `/mnt/hgfs/home/Coding/sersync'
make[1]: *** [.build-conf] Error 2
make[1]: Leaving directory `/mnt/hgfs/home/Coding/sersync'
make: *** [.build-impl] Error 2
```

经过查找, makefile实际生效的是`nbproject/Makefile-Release.mk`, 其中`LDLIBSOPTIONS`选项是编译操作的关键字段.

按照[这篇问答](http://bbs.chinaunix.net/thread-4156619-1-1.html) 中7楼的说法, 去掉`-static`参数, 添加`libpthread.so`的位置`-L/lib64`.

然后又遇到如下问题

```
/usr/bin/ld: build/Release/GNU-Linux-x86/main.o: undefined reference to symbol '_ZN5boost6system15system_categoryEv'
/usr/bin/ld: note: '_ZN5boost6system15system_categoryEv' is defined in DSO /usr/local/lib/libboost_system.so.1.64.0 so try adding it to the linker command line
/usr/local/lib/libboost_system.so.1.64.0: could not read symbols: Invalid operation
```

根据stackoverflow[这篇问答](http://stackoverflow.com/questions/38650981/undefined-reference-to-symbol-zn5boost6system15system-categoryev-error)中的最佳答案, 添加了`-lboost_system`参数.

再次编译成功.

工程原来的`LDLIBSOPTIONS`字段已经注释.