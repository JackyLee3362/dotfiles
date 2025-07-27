---
type: basic-note
title: vs-faq-常见问题
created_time: 2025-03-14
modified_time:
tags:
description:
---

## 如何配置搜索文件夹

ctrl + e 需要排除部分文件夹

```json
// 排除文件
"files.exclude": {
    "**/node_modules": true,
    "**/dist": true
}
// 排除搜索（一般用这个）
"search.exclude": {
    "**/node_modules": true,
    "**/dist": true
}
```

## Vim 过慢

```json
"extensions.experimental.affinity": {
    "vscodevim.vim": 1,
    "asvetliakov.vscode-neovim": 1
},
```

- [完美解决 vscode vim 插件卡顿问题长按 j k 或提示等卡顿问题\_vscode 插件安装卡主怎么关-CSDN 博客](https://blog.csdn.net/qq_51714354/article/details/128442761)

## Vscode 中文符号重复

```json
{
  "editor.experimentalEditContextEnabled": false
}
```

- [Chinese input repeats characters when using VSCodeVim in insert mode · Issue #9668 · VSCodeVim/Vim](https://github.com/VSCodeVim/Vim/issues/9668)

## 参考资料
