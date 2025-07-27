---
tags:
  - 工具
  - vim/教程
created_time: 2024-02-20
modified_time:
  - 2024-10-16
---

# vim 教程

在我的习惯中，vim 不使用 ctrl 键位

ctrl 键位让位于应用

## 移动

| 键位 | 默认行为                         | 配置文件中的行为 | 更改默认行为的配置                        |
| ---- | -------------------------------- | ---------------- | ----------------------------------------- |
| hjkl | 上下左右                         |                  |                                           |
| H    |                                  | 行首             | `noremap H ^`                             |
| L    |                                  | 行尾             | `noremap L $`                             |
| J    |                                  | 下 10 行         | `noremap J 10j`<br>或者 `noremap J <c-D>` |
| K    |                                  | 上 10 行         | `noremap K 10k`<br>或者 `noremap K <c-U>` |
| w    | 下一个字首                       |                  |                                           |
| e    | 字尾                             |                  |                                           |
| b    | 上一个字首                       |                  |                                           |
| gg   | 文首                             |                  |                                           |
| G    | 文尾                             |                  |                                           |
| %    | 在匹配的括号来回跳转             |                  |                                           |
| s    |                                  | 无行为           | `noremap s <Nop>`                         |
| f/F  | 向前向后查询<br>`,`和`;`前后移动 |                  |                                           |
| t/T  | 向前向后查询                     |                  |                                           |

## 选中/删除

| 键位 | 默认行为                 | 配置文件中的行为 | 更改默认行为的配置 |
| ---- | ------------------------ | ---------------- | ------------------ |
| diw  | 删除字                   |                  |                    |
| daw  | 删除字以及前后空行       |                  |                    |
| di"  | 删除引号内的内容         |                  |                    |
| da"  | 删除引号以及引号内的内容 |                  |                    |

前面的 `d` 表示删除，可以换成别的

- `c` 表示删除并进入插入模式
- `v` 表示选中

引号`"` 还可以换成

- 方括号 `[`
- 单引号 `'`
- html 标签 `t`

### 查找和替换

/ 向后查找 n 表示下一个，N 表示前一个
? 向前查找

## 寄存器

Vim 复制粘贴与寄存器
在 Vim 中的复制，删除，替换等操作的临时内容，都会存储在寄存器中

### 1 无名寄存器("")

两个双引号，Vim 中叫做无名寄存器。x,s,d,c,y 等操作，如果不指定寄存器，都是将临时内容放到这个寄存器中，也就是相当于一个默认寄存器。
可以通过 :reg 来查看当前寄存器的值，操作一下，然后查寄存器内容，就明白了。
例如：
复制当前行(yy)，并粘贴(p)。
这里 y 命令会将当前行内容放入寄存器""，按 p 时，会到寄存器""中取内容。

### 2 复制专用寄存器("0)

通过 y 命令复制的内容，会保存到寄存器 0 中。
寄存器的使用是通过"后面跟寄存器名字。
例如：
复制当前行(yy)，
又做了几次删除单词操作(dw)
但是只想粘贴刚才复制的行，那么就不能用无名寄存器""去粘贴了，不能直接 p 进行粘贴，需要用"0p，指定使用寄存器 0，因为"0 里只存放 y 命令存入的内容。

### 3 删除专用寄存器("1-"9)

通过 d 或 c 命令，删掉的内容，会保存打"1-"9 这 9 个寄存器中。
最新删除的内容，会在"1 中，其他顺延。
例如：
删除当前行(yy)
删除当前行(yy)
想复制第一次删除的行，"2p

### 4 命名寄存器("a-"z)

可以将重要内容放到命名寄存器"a-"z 中，一共 26 个。
例如：
把当前行放入寄存器"j 里，"jyy
复制寄存器"j 的内容， "jp

### 5 黑洞寄存器("\_d)

放到这个寄存器的内容，将不会放到任何其他寄存器中，相当于彻底删除内容。
例如：
彻底删除当前行，不放入任何寄存器，"\_dd

### 6 系统剪贴板("+)

通过"+寄存器可以把内容复制到系统剪贴板，也可以从系统剪贴板粘贴内容但 Vim 中。
例如：
复制当前行到系统剪贴板中，"+yy
复制系统剪贴板到 vim 中，"+p

总之，如果要使用一个寄存器，按以下形式 `[双引号][寄存器名][命令]`

### Vim 正则替换

vim: 用 \{-} 代替 \* 表示贪婪匹配

### vim 插件

- vim-easymotion
- vim-surround
- 文件树

## 参考资料

- [Tutorial · fatih/vim-go Wiki](https://github.com/fatih/vim-go/wiki/Tutorial)
- [前言 · 笨方法学 Vimscript · 看云](https://www.kancloud.cn/kancloud/learn-vimscript-the-hard-way/49321)
- [VSCodeVim/Vim: :star: Vim for Visual Studio Code](https://github.com/VSCodeVim/Vim)
- [Vim Awesome](https://vimawesome.com/)
- [我的 IntelliJ IDEA Vim 插件配置 | Verne in GitHub](https://einverne.github.io/post/2020/12/my-idea-vimrc-config.html)
- [全网最详细 IDEAvim 配置(.ideavimrc)\_idea vim-CSDN 博客](https://blog.csdn.net/Leivzy/article/details/132001375)
- [How do I tell IntelliJ IdeaVim to re-source the .ideavimrc - Stack Overflow](https://stackoverflow.com/questions/46719530/how-do-i-tell-intellij-ideavim-to-re-source-the-ideavimrc)
- https://github.com/JetBrains/ideavim/blob/master/doc/IdeaVim%20Plugins.md
- https://github.com/justinmk/vim-sneak

一些插件

- 2024/10/20-22:20 - [daipeihust/im-select: 📟 Switch your input method through terminal](https://github.com/daipeihust/im-select)
- 2024/10/20-22:21 - [ideavim/doc/IdeaVim Plugins.md at master · JetBrains/ideavim](https://github.com/JetBrains/ideavim/blob/master/doc/IdeaVim%20Plugins.md)
- ~~2024/10/20-22:21 - [Simple Vim - Visual Studio Marketplace](https://marketplace.visualstudio.com/items?itemName=jpotterm.simple-vim) vscode 中的 vim~~
