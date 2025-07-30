---
title: git 命令行基础
tags:
  - 工具
  - git/配置
created_time: 2024-10-08
description:
---

## `add`：添加命令

1. 将一个尚未被 Git 跟踪的文件纳入 Git 跟踪
2. 将一个已经被 Git 跟踪的文件且这个文件处于修改状态，通过 add，可以将它纳入暂存区
3. 将 merge 或者 rebase 后产生的冲突文件标记为冲突已解决

```sh
git add .
git add [文件1] [文件2] [文件3]
git add [文件夹]
# 更加规范的用法，来自 vscode-git
# 无 -A 表示只处理新增
# 其中 -A/-all 表示还处理新增和删除
git add -A -- [文件]
```

> 如何取消，通过对 Vscode 中 Git 的输出查看，可以看到其使用的命令是 `git reset -q HEAD -- .`
> 也可以使用 `git reset --mixed` 命令

## `init`：初始化

```sh
git init
```

## `status`：查看当前 git 工作状态

```sh
git status
# 简洁版
git status -s
```

## `branch`：分支命令

```sh
git branch --list # 显示所有分支
git branch 分支名  # 创建分支
git branch -f main HEAD~3 # 让main分支强制指向head前3个提交
```

## `checkout/switch`：切换分支命令

```sh
git switch 分支名  # 切换分支
git checkout 分支名 # 创建+切换分支
```

## `merge`：合并命令

```sh
分支1>>> git merge 分支2 # 将分支2合并到分支1
```

## `commit`：提交命令

```sh
# 将暂存区内容纳入Git提交记录
git commit -m "message"
# git add . 和 git commit -m "message" 合在一起
git commit -am "message"
```

## `diff`：查看文件修改详情

```sh

```

## `restore`：取消对某个文件的修改

```sh
# 当前是刚提交完（

# 从stages中移除
git restore --staged 文件2
```

## `stash`：临时保存当前分支的工作状态，方便切换到其它分支

应用场景：比如在自己的分支上工作到一半，但是被要求去修改别的文件，此时就需要

```sh
# 临时保存当前分支的工作状态，方便切换到其它分支
git stash
# 恢复刚刚临时保存的工作状态
git stash pop
```

## `.gitignore`文件

```.gitignore
node_modules
*.db
```

## `--cached` git 取消跟踪

```sh
git rm --cached file1.txt
# 如果是目录 -r
# 如果需要强制 -f
```

## 参考资料
