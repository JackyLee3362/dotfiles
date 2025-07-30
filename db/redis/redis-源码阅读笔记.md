---
title: redis 源码阅读笔记
created_time: 2024-10-22
---

## RoadMap 路线图

- [x] WSL2 中编译 redis ➕ 2024-10-22 ✅ 2024-10-22
- [x] 运行 wsl2/redis ➕ 2024-10-22 ✅ 2024-10-22
- [x] debug wsl2/redis ➕ 2024-10-22 ✅ 2024-10-22

## FAQ

### 什么是二进制安全（Binary Safe）的？

c/cpp 中读取字符串 `"hello,\0world"` 的长度，会因为 `\0` 发生问题，就是二进制不安全的

- [Binary-safe - Wikipedia](https://en.wikipedia.org/wiki/Binary-safe)
- [什么是二进制安全 - 她和她的猫](https://her-cat.com/posts/2021/03/25/what-is-binary-safe/)

### 什么是 `__attribute__((__packed__))` （在 sds.h 中声明）？

- [C语言__attribute__ ((__packed__))关键字自动字节对齐 - -零 - 博客园](https://www.cnblogs.com/-wenli/p/13056243.html)
- [C/C++ __attribute__((__packed__)) 用法與範例 | ShengYu Talk](https://shengyu7697.github.io/cpp-attribute-packed/)

### 什么是 `void*`？

给编译器的注释

- [C 语言中 void* 详解及应用 | 菜鸟教程](https://www.runoob.com/w3cnote/c-void-intro.html)

## Ref 参考

- [Redis本地调试 | 你要如何衡量你的人生](https://weikeqin.com/2023/07/22/redis-debug/)
- [redis源码解析 — redis 源码解析 1.0 documentation](https://redissrc.readthedocs.io/en/latest/#id3)
- [Redis 设计与实现（第一版） — Redis 设计与实现](https://redisbook.readthedocs.io/en/latest/)
- [Using alignment modifiers - IBM Documentation](https://www.ibm.com/docs/en/xl-c-and-cpp-aix/16.1?topic=data-using-alignment-modifiers)
- [数据类型范围 | Microsoft Learn](https://learn.microsoft.com/zh-cn/cpp/cpp/data-type-ranges?view=msvc-170)
- [C 库函数 – realloc() | 菜鸟教程](https://www.runoob.com/cprogramming/c-function-realloc.html)
- [C 库函数 – memcpy() | 菜鸟教程](https://www.runoob.com/cprogramming/c-function-memcpy.html)
- [huangzworks/annotated_redis_source: 带有详细注释的 Redis 2.6 源码](https://github.com/huangzworks/annotated_redis_source)
- [C语言中的vsnprintf函数 - 禅元天道 - 博客园](https://www.cnblogs.com/chanyuantiandao/p/16982478.html)

## 参考文献

- [huangzworks/annotated_redis_source: 带有详细注释的 Redis 2.6 源码](https://github.com/huangzworks/annotated_redis_source)