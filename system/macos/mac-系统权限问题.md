---
title: mac-系统权限问题
author: JackyLee
created_date: 2025-08-01
tags:
description:
---

## brew 安装 chromedriver 后无法启动

到 chromedriver 安装目录下

```sh
xattr -d com.apple.quarantine chromedriver
```

[（mac）无法打开“chromedriver”，因为无法验证开发者 - yimu-yimu - 博客园](https://www.cnblogs.com/may18/p/15237666.html)

## 参考资料
