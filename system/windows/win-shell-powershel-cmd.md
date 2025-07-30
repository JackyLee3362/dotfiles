---
type: basic-note
title: win-shell-powershel-cmd
created_time: 2025-04-28
modified_time: 
tags:
description:
---

## 更改代码页

```sh
chcp 65001
```

## 获得当前系统信息

```sh
get-computerinfo
```

## 查看当前显卡占用情况

```sh
nvidia-smi
```

## powershell中的命令

```sh
$env:PATH
$env:path -split";"
$env:OneDrive
```

## 批处理文件

[Windows脚本编写 | This_Wei](https://www.wqf31415.xyz/2021/02/03/Windows脚本编写/#注释)

处理执行乱码问题

因为codepage的问题

可以用`chcp`查看`codepage`，utf-8的是65001(十进制)

[Powershell改变默认编码_修改powershell默认编码-CSDN博客](https://blog.csdn.net/u014756245/article/details/100536552)

## 别名

```sh
# 获取别名
get-alias
# 比如有个命令叫 get-help，为其创建别名（临时）
new-alias -name gh -value get-help
```

[关于 Alias - PowerShell | Microsoft Learn](https://learn.microsoft.com/zh-cn/powershell/module/microsoft.powershell.core/about/about_aliases?view=powershell-7.4)

## cmd用的比较少

### 打印环境变量

```sh
echo %PATH%
echo %OneDrive%
```

## 参考资料