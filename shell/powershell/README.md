---
title: powershell
author: JackyLee
created_date:
  - 2025-04-28
  - 2025-07-27
tags:
  - cmd
  - powershell
description:
---

## TODO

- oh-my-posh
- 重新安装 miniconda
- 学习并产出 powershell 7 的基本命令

## 介绍

- 仓库地址 [Powershell-github]

## 安装与升级

```sh
winget install --id Microsoft.PowerShell --source winget
```

[在 Windows 上安装 PowerShell - PowerShell | Microsoft Learn](https://learn.microsoft.com/zh-cn/powershell/scripting/install/installing-powershell-on-windows?view=powershell-7.5)

## 基础使用

### 查看当前版本信息

```sh
$psversiontable
# 或者
$PSVersionTable.PSVersion
```

### 打印环境变量

```sh
$env:XXX
# 打印路径
$env:PATH -split";"
# 如果是 CMD
echo %XXX%
echo %PATH%
```

### 打印显卡信息

```sh
nvidia-smi
```

### 显示历史补全

`$profile` 中新增

```sh
# 显示补全选项
Set-PSReadLineKeyHandler -Chord Tab -Function MenuComplete
# 列表式的历史记录补全
Set-PSReadLineOption -PredictionViewStyle ListView
```

### 设置别名

```sh
Set-Alias -Name 原命令 -Value 目标命令
# 比如将 where.exe 简化为 w
Set-Alias -Name w -Value where.exe
```

## FAQ

### 无法显示 Anaconda

- [Windows Powershell 无法切换 anaconda 的问题 - Do1phln - 博客园](https://www.cnblogs.com/cjjcn/p/16649967.html)

## 参考资料

[Powershell-github]: https://github.com/PowerShell/PowerShell
