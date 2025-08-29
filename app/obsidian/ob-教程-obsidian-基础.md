---
title: obsidian 基础
tags:
  - obsidian/基础
  - 工具
create_date: 2024-09-26
---

## 介绍

在无意中发现 obsidian 经过 2 年的更新，和我之前认识的完全不一样了，和  vscode 完全不一样。

两个软件的定位是有差异的，obsidian 是笔记软件，而 vscode 是 IDE。

之前一直因为移动端不能同步 vscode 仓库而困扰，现在 obsidian 在这方面完美解决了我的问题。

于是准备看看 obsidian 能不能解决我其他方面的诉求。

## 需求

### 移动端同步

- [x] 使用 dropbox/坚果云 + remote sync 插件 ✅ 2024-09-26

### 想法能随时添加

- [x] 可以使用 Templater 和 QuickAdd 插件解决 ✅ 2024-09-26

### 文章数据库

- [x] 使用 markdown 的 yaml 管理 + dataview 插件 ✅ 2024-09-26

### ~~代码片段管理~~

原先的解决方案是使用 masscode 这个软件，但是问题是，这样又多一个软件，多了学习成本；
是否可以通过插件解决？

暂时想到的方法是规定 markdown 的文章结构，然后使用搜索方法，然后复制

```dataview
TABLE WITHOUT ID en as "英文", cn as "中文"
FROM csv("db/weekend.csv")
limit 4
```

```dataview
LIST
```

语法搞定了，然后就是在移动端如何方便地查看

## vim 使用

obsidian vimrc 配置 [.obsidian.vimrc](https://gist.github.com/kxxoling/dcc1c3a897e6735989f32b55ef069136)

## local-rest 使用


## 参考文献

- [ ] [usememos/memos: An open-source, lightweight note-taking solution. The pain-less way to create your meaningful notes.](https://github.com/usememos/memos)➕2023-09-27 01:30:33 
	-  开源自己部署的日记
- [ ] [Obsidian 达人成长之路 2：使用终极工具 Dataview 释放笔记库的潜力 · JavaScript API - 掘金](https://juejin.cn/post/7372768355777839104)➕2024-09-27 01:45:36
- [ ] [Obs137｜用Dataviewjs讀取CSV資料以繪製統計圖表 – 簡睿隨筆](https://jdev.tw/blog/8190/obs137%EF%BD%9Cload-csv-by-dataview-integrates-charts)➕2024-09-27 02:05:16