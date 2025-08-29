---
title: mvn
author: JackyLee
create_date: 2025-08-11
tags:
description:
---

## `tldr mvn`

可以查看 mvn 的一些基本用法

## `test` 测试命令

```sh
# 测试某个具体的方法
mvn test -Dtest=完整类名#方法名
# 特定模块中运行
mvn test -pl [模块] -Dtest=类名#方法名
# 参数说明
# -B: 无交互模式
# -U: 强制更新快照
# -am: also-make 除了构建测试模块，还需构建依赖模块
# -Dmaven.test.failure.ignore: 设为 true 时，测试失败不影响构建流程
# -Dsurefire.runOrder=random: 确保测试类的执行顺序是随机的，是Surefire插件的选项之一
mvn test -B -U -am -Dmaven.test.failure.ignore -DfailIfNoTests=false -Dsurefire.runOrder=random -Dtest=完整类名#方法名
```

## 参考资料
