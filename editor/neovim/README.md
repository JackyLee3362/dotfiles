---
type: basic-note
title: nvim-read-阅读材料
create_date: 2025-04-28
update_date:
tags:
description:
---

## 介绍

## 命令模式

### 内置命令

```sh
# 查看 Lazy 插件信息
:Lazy 
# 查看 Lazy 额外信息
:LazyExtras
# 查看寄存器
:h registers
# 行替换
:2,5s/<from>/<to>/g
# 全局替换
:%s/<from>/<to>/g
# 新建一个 tab
:tabnew 
:tabnext
:tabprevious
:tabclose
```

### Lua 命令

```sh
# 查看配置文件路径
:= vim.fn.stdpath("config") 
# 查看全局配置变
:= vim.opt.xxx 
# 查看 lazyVim 的数据文件
:= vim.fn.stdpath("data")
```

## 快捷键

- ctrl + / 显示命令面板
- ctrl + hjkl 移动焦点
- H 显示/隐藏部分文件，比如 .gitignore
- shift + h/l 切换 tab
- space + b + d 关闭 :tab(buffer)
- qa 退出 nvim

- s 快速跳转
- f 查找下一个，使用 f/; 和 F/, 跳到下一个/上一个
- gd 跳转定义
- gc 注释
- `>>` 和 `<<` 缩进/取消缩进
- `[` 和 `]` + e 下一个/上一个错误
- `[` 和 `]` + a 函数参数跳转
- diw/ciw/viw 或者 `di"/ci"/vi"`
- u 撤销 ctrl+r 重做

- 空格+空格 选择最近文件
- 命令模式中 `:= vim.fn.stdpath("config")`

api: `vim.keymap.set(mode, lhs, rhs, opts)`

- mode: n 普通模式/v 可视模式 /i 输入模式 /c 命令模式 / (table)
- lhs/rhs: `ctrl+a` -> `<C-a>` / `alt+a` -> `A-a`
- opts:
  - `silent` 是否在 command line 中显示命令，默认是 false
  - `remap` 是否递归显示，默认 false

> lua 中 table 包括 `{1, 2, 3}`, `{1, 2, a=3}` 和 `{a=1, b=2, c=3}`

### Buffer 相关命令

```sh
:buffers
# 切换到具体数字
:buffer [数字] 

# vim 中分屏操作
:vsplit  # 左右分屏
:split  # 上下分屏

# 移动 window 光标
# <C-w>+hjkl

# 关闭窗口
# <C-w>+c

# 关闭所有其他窗口
# <C-w>+o 

# 查看帮助文档
:h :buffers
# 此时查看 buffers 没有帮助文档
# 要显示所有 buffers，需要使用 buffers!
```

## 快捷键设置

### 宏操作

```sh
<C-a> 数字+1
<C-x> 数字-1
```

## 插件

### Nvim-tree

:NvimTreeToggle

- 或者命令 :w 文件名 
- 新建文件使用 `a`
- 复制 y
- 剪切 x
- 重命名 r


## 参考资料

- [🚀 入门指南 | LazyVim](https://lazyvim-github-io.vercel.app/zh-Hans/)
- [neovim/INSTALL.md at master · neovim/neovim](https://github.com/neovim/neovim/blob/master/INSTALL.md)
