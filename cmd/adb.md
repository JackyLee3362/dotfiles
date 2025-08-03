---
title: 命令行-adb
created_time: 2024-03-25
modified_time:
tags:
description:
---

## adb 调试

```sh
cd D:/Program/platform-tools

adb devices -l
```

## 修改收集分辨率

```sh
adb -s NBC6NBRKG66XMVMJ shell

wm size 1080x1920

wm density 480

# 恢复分辨率
wm size reset
```
