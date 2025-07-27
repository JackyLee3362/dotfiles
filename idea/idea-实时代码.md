# 实时代码

> 设置 - 编辑器 - 实时代码

[官方文档](https://www.jetbrains.com/help/idea/using-live-templates.html)

1. 创建自定义模板组
2. 创建自定义模板
3. 定义缩写(比如auth)，写描述
4. 选择语言(比如Java)

举例

```java
/*
 * author JackyLee
 * date $DATA$
 **/
```

此时需要设置变量 `$DATA$`，关于变量的设置，可以看[这个链接](https://www.jetbrains.com/help/idea/using-live-templates.html)

此时还有个问题，就是生成的代码 date
下面会有波浪线，看这个[解决方案](https://blog.csdn.net/qq_43719388/article/details/117172841)
