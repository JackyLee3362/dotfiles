---
type: basic-note
title: git-faq
create_date: 2025-03-12
update_date:
tags:
description:
---

## git 在 powershell 使用命令行时出现乱码

```sh
git config --global core.quotepath false
git config --global gui.encoding utf-8
git config --global i18n.commit.encoding utf-8
git config --global i18n.logoutputencoding utf-8
```

- [Powershell 下 git 中文乱码 - Laggage - 博客园](https://www.cnblogs.com/laggage/p/12301495.html)

## 🟢 git 取消文件跟踪

CLI 解决方案

GUI 解决方案

## git 文件名大小写敏感

> 2025-03-22 clone joyful-pandas 遇到

![20250322002110-2025-03-22](https://assets-1302294329.cos.ap-shanghai.myqcloud.com/2025/md/20250322002110-2025-03-22.png)

原因是 windows 系统大小写不敏感，而 git 大小写敏感

- [Windows 大小写不敏感导致的 git 冲突 | Finisky Garden](https://finisky.github.io/git-is-case-sensitive-while-file-system-is-not/)

## git CR/CRLF 是怎么解决的？

## 前言

平常使用 `git add .` 或者 `git push|pull|clone` 等命令，已经无法满足各种奇怪的需求了，

在使用 Github 的时候，由于对【本地分支】和【远程分支】理解不够深刻，难免会出现各种问题

所以本文章持续记录使用 Git 时遇到的各种复杂场景

## 1 本地分支相关

### 1.1 签出会覆盖本地修改

场景描述：

通常我会在 `dev` 分支上操作，然后细粒度地提交 commit，上传到 github 上形成一个 pull-request，然后 `main` 再接受 pr，合并成一个

但是有时候会忘记切换分支（比如现在就是），直接在 main 上更改

在 vscode 的状态栏就会出现 `*`，此时想换到 `dev` 分支

直接切换会出现

!签出会覆盖本地修改的图片

该提示下的三个选项分别是什么意思呢？

1. 储藏并签出：希望【暂存区】仍然在当前分支，然后切换到另一个分支
2. 迁移更改：希望将【暂存区】的内容切换到另一个分支，可能要处理冲突问题
3. 强制签出：（不推荐）直接放弃当前分支（比如 `main`）未提交的 `commmit`，然后切换为分支 `dev`

所以该场景我们需要的是【迁移更改】

### 1.2 暂存 apply 和 pop

什么时候需要【储藏并签出】呢？

比如当自己在 `a-branch` 上写代码，突然有紧急的 bug 需要在 `b-branch` 维修，但是 `a-branch` 还没到达可以提交的阶段，此时就可以使用【储藏并签出】的功能

在修改完以后，回到原先的分支，可以看到 stash 的小图标

此时右键单击该小图标，会弹出如下对话框

那么两个选项有什么区别呢？

- `apply-stash`：合并到当前分支，可以对多个分支使用，删除用 `drop stash`
- `pop-stash`：合并到当前分支并删除，即只能使用一次

Warning: 使用完 stash 后，并没有形成一个提交

该场景下用 `pop-stash` 即可

### 1.2 变基

## 2 远程分支相关

### 2.1 克隆指定分支

```shell
git clone [git-repo] -b [branch-name]
# 或者
git clone -b [branch-name] [git-repo]
```

### 2.2 clone 时选择 http 协议 和 ssh/git 协议 的区别

http: 无需身份验证

ssh: 需要 ssh 密钥

### 2.1 删除远程分支

远程分支已删除，本地仍然保留远程分支，如何清理过期的分支

原因就是本地缓存了远程分支的信息，要删除本地缓存的已删除远程分支，可以使用以下 `git` 命令

```shell
git remote prune origin
```

### 2.2 git modules 相关

git modules 是第一次遇到，有点抽象的，不过不用管，先酱

删除 `gitmodules`

```shell
# 取消关联
git submodule deinit -f <submodule-path>
# 删除 .gitmodules 文件
rm .gitmodules # linux
del .gitmodules
# 更新 Git 的索引以反映文件的删除
git rm --cached .gitmodules
# 提交
git commit -m "Remove .gitmodules file"
```

## 参考资料

- [Git 入门图文教程(1.5W 字 40 图)🔥🔥--深入浅出、图文并茂 - 安木夕 - 博客园](https://www.cnblogs.com/anding/p/16987769.html)
- [git bash 报错 fatal: detected dubious ownership in repository at 的解决方法 - Clotho_Lee - 博客园](https://www.cnblogs.com/live41/p/17290417.html)
- [linux - "git submodule update" failed with 'fatal: detected dubious ownership in repository at...' - Stack Overflow](https://stackoverflow.com/questions/72978485/git-submodule-update-failed-with-fatal-detected-dubious-ownership-in-reposit)
