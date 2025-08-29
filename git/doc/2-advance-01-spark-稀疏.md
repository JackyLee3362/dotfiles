---
type: basic-note
title: git-稀疏
create_date: 2025-03-29
update_date: 
tags:
description:
---

```sh
git clone --filter=blob:none --no-checkout https://github.com/JackyLee3362/packages --branch simple-ecnu-thesis-0.1.0

cd packages

git config core.sparsecheckout true

git sparse-checkout set packages/preview/simple-ecnu-thesis

git checkout main

code .
```

```sh
git     
```

## 参考资料
