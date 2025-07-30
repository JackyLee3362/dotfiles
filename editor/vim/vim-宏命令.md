---
title: vim 宏命令
created_time: 2025-02-26
modified_time: 
tags:
  - 工具
  - vim/宏命令
description: 
---

## 场景：递归调用宏命令

之前在使用 `q` 录制宏命令的时候，无意间使用了这样的组合

```sh
# 录制命令并记录在 d 中
qd
# 开始录制---------
Hdt-j@d
# 结束录制
q
```

1. 其中 `Hdt-` 是普通操作
2. `j` 是换到下一行
3. 然后继续调用 `@d` 直到行尾
