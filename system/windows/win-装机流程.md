---
type: basic-note
title: pkm-新电脑配环境流程
create_date: 2025-03-18
update_date:
tags:
description:
---

## 2025-03-18

### 更改 OneDrive 文件夹

首先设置 - 账户 - 取消链接此电脑 - 取消链接账户

- [更改 OneDrive 文件夹的位置 - Microsoft 支持](https://support.microsoft.com/zh-cn/office/%E6%9B%B4%E6%94%B9-onedrive-%E6%96%87%E4%BB%B6%E5%A4%B9%E7%9A%84%E4%BD%8D%E7%BD%AE-f386fb81-1461-40a7-be2c-712676b2c4ae)

### 更改软件默认安装路径

regedit - `计算机\HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion`

这个项下的各个含义

```sh
CommonFileDir
CommonFileDir(x86)
CommonW6432Dir
DevicePath
ProgramFilesDir      -> "D:\Program"
ProgramFilesDir(x86) -> "D:\Program86"
ProgramW6432Dir
```

- [win11 更改默认安装路径 - 知乎](https://zhuanlan.zhihu.com/p/491135292)
- [Windows 软件默认安装位置之谜 - 知乎](https://zhuanlan.zhihu.com/p/93481355#:~:text=CommonFilesDir%20%E7%B3%BB%E7%BB%9F%EF%BC%8864%20or%2032,32%20%E4%BD%8D%E7%9B%B8%E5%90%8C%E5%8A%9F%E8%83%BD%E6%96%87%E4%BB%B6%E3%80%82)

### 安装 Clash

OneDrive 软件同步安装

### 安装 choco

```sh
choco install git
choco install miniconda3

```

### win11 更改右键方式

## 参考资料
