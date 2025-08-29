---
type: basic-note
title: browser-插件-sufingkeys
create_date: 2025-03-03
update_date:
tags:
description:
---

## 常用操作

API 说明文档

- [Surfingkeys/docs/API.md at master · brookhong/Surfingkeys](https://github.com/brookhong/Surfingkeys/blob/master/docs/API.md#mapkey)

## 跳转第 N 个标签

## 配置

```js
const { map, unmap, mapkey } = api;
// 上个 tab
map("H", "E");
// unmap('E')

// 下个 tab
map("L", "R");
// unmap('R')

// 下半页
map('J', 'gh');
// unmap('d')

// 上半页
map('K', 'gl');
// unmap('u')

// OmniSearch
map("o", "t");
unmap("t");

// 前进 Forward 和返回 Backward
map("gl", "F");
map("gh", "B");

settings.scrollStepSize = 360;
```

## FAQ

### 选择可滚动的元素

使用 `;fs`，按住 `?` 就可以看到

- [Use easymotion to change scroll target · Issue #1053 · brookhong/Surfingkeys](https://github.com/brookhong/Surfingkeys/issues/1053)

## 参考资料

- [Surfingkeys 实用向推荐 - 少数派](https://sspai.com/post/63692)
- 实用配置：[Example Configurations · brookhong/Surfingkeys Wiki](https://github.com/brookhong/Surfingkeys/wiki/Example-Configurations)
