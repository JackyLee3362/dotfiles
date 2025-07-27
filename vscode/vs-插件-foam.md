---
title: "foam: A personal knowledge management and sharing system for VSCode"
source: "https://github.com/foambubble/foam"
created: 2025-01-14
description: "A personal knowledge management and sharing system for VSCode - foam"
tags:
  - vscode/插件
  - 工具
---

![主界面](https://github.com/foambubble/foam/raw/master/packages/foam-vscode/assets/icon/FOAM_ICON_256.png)

## Foam 介绍

**Foam**是一个【个人知识管理】和共享系统，受 [Roam Research](https://roamresearch.com/) 的启发，建立在[Visual Studio Code](https://code.visalstudio.com/)和[github](https://github.com/)。

## Features 特点介绍

### Graph Visualization 图可视化图

使用命令 `Foam: Show Graph`

[参考文档](https://foambubble.github.io/foam/user/features/graph-visualization) 

### Link Autocompletion 链接自动补全

### Sync links on file rename 文件链接重命名

### Unique identifiers across directories 使用不同的标识符

支持多文件下的重名文件，使用中间标识符，假设重名文件是 `d1/foo.md`，另一个是 `d2/foo.md`，那么 `d1/foo` 的链接是 `[[d1/foo]]`

### Link Preview and Navigation 链接预览和导航

### Go to definition, Peek References 转到定义和查看引用

### Navigation in Preview 在预览中导航

### Note embed 嵌入笔记

### Support for sections 支持章节

语法为 `[[resource#Section Title]]`.

### Link Alias 链接别名

语法为 `[[wikilink]]` 或者  `[[wikilink|alias]]`.

### Templates 模板

使用 [自定义模板](https://foambubble.github.io/foam/user/features/note-templates) 

### Backlinks Panel 反向链接面板

### Tag Explorer Panel 标签面板

[参考文档](https://foambubble.github.io/foam/user/features/tags)

### Orphans and Placeholder Panels 孤立和占位符面板

对于没有入链和出链的笔记，有个单独的面板

### Syntax highlight 语法高亮

对于 wikilinks 和 placeholder Foam 使用不同的高亮，帮助你可视化不同的知识

![语法高亮](https://github.com/foambubble/foam/raw/master/assets/screenshots/feature-syntax-highlight.png)

### Daily note 日常日记

[参考文档](https://foambubble.github.io/foam/user/features/daily-notes).

### Generate references for your wikilinks 生成 wiki 链接

生成引用参考文档

[生成引用](https://foambubble.github.io/foam/user/features/link-reference-definitions) for `[[wikilinks]]` 

### Commands 命令

- Explore your knowledge base with the `Foam: Open Random Note` command
- Access your daily note with the `Foam: Open Daily Note` command
- Create a new note with the `Foam: Create New Note` command
- This becomes very powerful when combined with [note templates](https://foambubble.github.io/foam/user/features/note-templates) and the `Foam: Create New Note from Template` command
- See your workspace as a connected graph with the `Foam: Show Graph` command

## Recipes 

[参考文档](https://foambubble.github.io/foam/user/recipes/recipes)

## 快速入门

如果你想构建 [第二大脑](https://www.buildingasecondbrain.com/) 或者 [Zettelkasten](https://zettelkasten.de/posts/overview/)，可以遵循一下几个原则

1. Create a single **Foam** workspace for all your knowledge and research following the \[\[Getting started\]\] guide.
2. Write your thoughts in markdown documents (I like to call them **Bubbles**, but that might be more than a little twee). These documents should be atomic: Put things that belong together into a single document, and limit its content to that single topic. ([source](https://zettelkasten.de/posts/overview/#principles))
3. Use Foam's shortcuts and autocompletions to link your thoughts together with `[[wikilinks]]`, and navigate between them to explore your knowledge graph.
4. Get an overview of your **Foam** workspace using the \[\[Graph Visualisation\]\], and discover relationships between your thoughts with the use of \[[Backlinking](https://github.com/foambubble/foam/blob/master/docs/user/features/backlinking.md "Backlinking")\].

You can also use our Foam template:

1. Log in on your GitHub account.
2. [Create a GitHub repository from foam-template](https://github.com/foambubble/foam-template/generate). If you want to keep your thoughts to yourself, remember to set the repository private.
3. Clone the repository and open it in VS Code.
4. When prompted to install recommended extensions, click **Install all** (or **Show Recommendations** if you want to review and install them one by one).

This will also install `Foam`, but if you already have it installed, that's ok, just make sure you're up to date on the latest version.

## 更多关于 Foam 的文档

快速文档链接

- [什么是 Foam?](https://foambubble.github.io/foam#whats-in-a-foam)
- [快速开始](https://foambubble.github.io/foam#getting-started)
- [Foam 特性](https://foambubble.github.io/foam#features)
- [未来计划](https://foambubble.github.io/foam#call-to-adventure)

你也可以打开 [docs folder](https://github.com/foambubble/foam/tree/master/docs).
