---
title: chocolatey 教程
tags:
    - 工具
    - chocolatey/教程

create_date: 2024-10-08
---

## 安装

检查运行环境

```sh
Get-ExecutionPolicy
# 如果返回值是Restricted，则执行下面的语句
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
```

## 查看安装后的日志

```cmd
// choco install mingw # 安装 mingw 
C:\ProgramData\chocolatey\logs\chocolatey.log
```

## 参考

[Chocolatey Software | Chocolatey - The package manager for Windows](https://chocolatey.org/)
