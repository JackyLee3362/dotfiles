# vscode 教程

## 第一章 介绍与安装

### 介绍 Visual Studio Code

官网：[https://code.visualstudio.com](https://code.visualstudio.com)

Github 上的开源地址：[https://github.com/microsoft/vscode](https://github.com/microsoft/vscode)

通过查看源代码根目录下的`package.json`文件，可以发现，VS Code 是基于[Electron](https://www.electronjs.org/)这样一个专门制作跨平台桌面软件的框架而搭建的。

VS Code 这款软件的组成，其实是里面嵌入了一个 Chrome 浏览器外加一个 Node.js 运行时，整个 VS Code 我们能够看到的界面，其实都是由 HTML、CSS 和 Javascript 编写而成并使用 Chrome 来渲染出页面，点击 VS Code 顶部菜单栏的最后一项`Help`，然后选择倒数第二项：`Toggle Developer Tools`，就可以看到弹出的 Chrome 开发者工具

VS Code 近些年来越来越受开发者欢迎，是因为它的身上存在这么几个亮点：

1. **打开速度快**，用 VS Code 来打开一个项目，基本上可以说是秒开，即使是很大的项目，也可以非常快的被打开。
2. **支持的编程语言多**，VS Code 在初始状态下对 Web 前端开发、Node.js 开发以及 PHP 等语言的开发都有很好的支持，至于其它的一些编程语言，比如说：Java、Python、Go、Ruby、C#、C/C++等等，只要安装相应的扩展就能很好的完成开发环境的搭建
3. **扩展丰富**，VS Code 的扩展十分丰富，
   1. 从**量**上来看，VS Code 的扩展数量已经上万，
      1. 比如说你想使用 Mysql 的 GUI 工具，那么你可以直接下载一个叫`MySQL`的扩展
      2. 比如说一款名叫`daily-anime`的扩展，如果你是个动漫爱好者
   2. 从**质**上来看，VS Code 很多重要的扩展都是由微软、谷歌等这样的大公司在维护，这些扩展的安装量有很多都超过百万甚至是千万，所以用起来十分的放心，也很少出错误
   3. 我们在大陆地区也能够以很快的网速完成扩展的安装
   4. 除了一些特殊的扩展，绝大多数扩展安装完就生效，不需要重启 VS Code
4. **涵盖应用程序的整个生命周期**，一款代码编辑器一般只涵盖应用程序的开发阶段，而对于一些程序，比如说 Web 应用，常常还会有部署阶段。在 VS Code 中我们可以利用一些扩展，比如说微软公司提供的 azure 相关扩展，或者亚马逊公司提供的 aws 相关扩展，利用它们，我们就可以很方便的通过 VS Code 完成应用的一键部署，所以从开发到部署全程用 VS Code 这一个工具就够了！

> [!Note]
>
> `Visual Studio Code`和`Visual Studio`的区别：其实 VS Code 的全称叫做 `Visual Studio Code`，作为微软于 2015 年推出的一款代码编辑器，他还有一位老大哥，叫做[Visual Studio](https://visualstudio.microsoft.com/)。所以，`Visual Studio Code`和`Visual Studio`是两款不同的代码编辑器。Visual Studio 是微软很早很早以前(_查了下[wikipedia](https://en.wikipedia.org/wiki/Microsoft_Visual_Studio)，第一个版本发布于 1997 年_)就推出的一款功能强大的 IDE，但他主要用于微软自家的一些技术开发，比如说.NET 开发和最近比较火的.NET Core 开发。VS Code 作为一款新产品，在创建之初，就从他大哥身上借鉴了很多好的地方，比如说后面课程会学习的`workspace`概念，如果你用过 Visual Studio，你会发现这和 Visual Studio 上的`solution`很类似，同时 VS Code 也摒弃了他大哥身上一些不太好的地方，最大改善就是让整个软件变得更加轻量。VS Code 安装过后大概占用不到 300M 的硬盘空间，而 Visual Studio 呢？哈哈，没有个两三个 G 你是搞不定他的！我记得在读大学的时候，那时候还在用 Visual Studio 2008，为了卸载 Visual Studio，我每次都是转而选择重装系统！
> 除了有老大哥 Visual Studio，VS Code 他还有一位双胞胎兄弟，叫做`Insiders Edition`（预览版），他的下载地址：[https://code.visualstudio.com/insiders/](https://code.visualstudio.com/insiders/)。

### 如何用 VS Code 打开一个项目

三种方式，分别是：

1. 采用**拖拽**，我们可以将一个项目目录直接拖拽入 VS Code，就能让 VS Code 直接打开这个项目。
2. 使用**菜单栏选项**, 在 Mac 上是：`File > Open`；而在 Windows 上是：`File > Open Folder`。
3. ⭐ 是使用`code`命令，
   1. 打开菜单栏中的`View > Command Palette`
   2. 在`Command Palette`的顶部输入框中输入：`path` 并点击结果列表中的`Shell Command: Install 'code' command in PATH`
   3. 新打开一个`terminal`窗口并输入`code -h`来校验一下 code 命令是否安装成功

最后，我们来看一下 code 命令的**三个常用用法**：

```shell
code -h             # 用于显示帮助文档
code .              # 用于打开当前目录
code [文件夹路径]     #用于打开指定路径下的文件夹
code $env:userprofile # 用于打开用户目录
```

> [!Note]
> 除了可以打开一个项目目录，VS Code 也可以用来直接打开单个文件，比如 `code ~/.zshrc`来修改本地 zsh 的配置文件

## 第二章 界面布局与功能介绍

VS Code 的用户界面其实是由五大部分组成，每一个部分都有特定的功能，这些功能从不同的角度协助我们更好的利用 VS Code 来完成项目的开发工作，所以在正式使用 VS Code 开发项目之前，我们一定要先学好这五大部分。

### 用户界面概览

VS Code 的用户界面一共由五大部分组成，分别是：

1. 状态栏（Status Bar）：用于显示当前被打开文件的一些信息
2. 活动栏（Activity Bar）：它里面包含了 VS Code 五个重要功能的入口点
3. 侧边栏（Side Bar）：它里面包含了 Activity Bar 五个功能点的详细内容
4. 编辑器（Editor）：用于编写代码
5. 面板（Panels）：它包含了 4 个不同的面板，其中的 Terminal 面板我们会经常用到

### 资源管理器

活动栏（Activity Bar）的第一个功能点：资源管理器（Explorer）

Explorer 它的功能主要是用于显示我们项目所包含的所有文件以及文件夹。在 侧边栏 中

- OPEN EDITORS
- 项目本身
  - 新建文件、新建文件夹、刷新当前目录、折叠某个目录
- OUTLINE

### 搜索工具

Search

作用：文本的搜索 + 文本的替换

包含的文件、排除的文件

```reg
# "*"表示通配符，使用逗号","分隔
*.md, *.py  -> 任意以的md或者py文件
.md, .py    -> 同上
```

非贪婪匹配+替换

```reg
<tag>(.*?)</tag>
$1
```

### 源代码管理

Activity Bar 的第三个功能点，用于 Git 版本控制的：Source Control

### 调试工具 Debug

- 通用知识
- 具体编程语言相关的调试知识

以`node.js`为例，准备环境

1. **搭建相应编程语言的开发环境** ：比如说，我们想调试 Java 程序，那我们就必须先要在本地搭建好 Java 的开发环境，保证可以在命令行中调用`java`和`javac`命令
2. **安装相应编程语言用于调试的扩展**：不同的编程语言在调试时，还需要借助专门的扩展。比如说，我们想调试 PHP 程序，那我们就必须要安装一个叫`PHP Debug`的扩展
3. **配置 launch.json**：`launch.json`是 VS Code 中专门用于调试的配置文件，只有将这个文件配好了，我们才能开启调试

如果我们使用的是 Node.js 的话，我们可以省略其中的条件 2 和条件 3，这是因为 VS Code 默认只支持 Node.js 调试（_P.S. 在第三课中，我们有提到 VS Code 的内部其实是嵌入了一个 Chrome 浏览器外加一个 Node.js 运行时，这或许就是 VS Code 和 Node.js 这么亲近的原因吧_）。所以，对于调试的「通用知识”学习，我将使用 Node.js 来做演示。

为了使用 Node.js，我们就必须要先在本地搭建好 Node.js 的开发环境，所以在接下来的三节课，我将分别介绍如何在 macOS、Windows 以及 Linux 上搭建 Node.js 开发环境。

### 调试界面概览

1. 调试工具栏（Debug toolbar）
2. 断点（Breakpoint）
3. 调试控制台面板（Debug console panel）：一是可以输出调试日志本地变量输出表达式的值
4. 调试侧边栏（Debug sidebar），它由多个部分组成，用于显示本地变量、计算表达式、显示函数调用栈、断点管理等功能

### Debug sidebar 的使用方式

Debug sidebar 一共由五个部分组成，从上到下分别是：

- 运行时的变量：VARIABLES
- 开发者观察的变量：WATCH
- 调用栈：CALL stack
- 脚本命令：LOADED SCRIPTS
- 断点管理：BREAKPOINTS

### Debug toolbar 的使用方式

- 继续运行：continue
- 步进：step over
- 步入：step into
- 步出：step out
- 重启调试：restart
- 停止调试：stop

### 介绍 launch.json

配置和管理调试会话

1. 配置调试环境：你可以指定调试器类型（例如 Node.js、Python、C++ 等），以及启动程序时需要的命令和参数
2. 设置断点和观察点：通过配置，可以确定哪些代码行或条件作为断点，以便在运行时停止
3. 环境变量：可以设置在调试会话中需要的环境变量
4. 调试选项：包括程序的启动路径、命令行参数、端口号等
5. 附加到现有进程：可以配置调试器附加到正在运行的进程，而不是启动一个新进程

- `type`: 可以填`python`或者`node`之类的
- `name`: 给配置起一个容易记住的名字
- `request`: 可以填`launch`或者`attach`。使用`launch`我们可以让 VS Code 去启动我们的程序，同时启动后的程序还支持调试。而`attach`的方式有点不一样，它并不会帮我们启动程序，而是通过为一个**已经在运行且还不支持调试**的程序**注入一个调试器**，让这个程序从不支持调试变成支持调试

Tip: 课程中会使用以下代码片段：

```js
const http = require("http");

const server = http.createServer((req, res) => {
  res.end("hello world");
});

server.listen(3000, () => {
  console.log("Server is listening on 3000");
});
```

### 调试技巧 1 搜索本地变量

将光标定位到 VARIABLES 区域，然后直接输入搜索关键词，这样 VS Code 会自动定位到符合搜索词的变量并高亮其内容

### 调试技巧 2 logpoints

特殊断点**logpoints**：可以以非阻塞、打日志的方式来调试程序

### 调试技巧 3 conditional breakpoint

特殊断点：**conditional breakpoint**，使用它我们可以为一个断点添加条件判断语句，条件判断语句返回真时，断点才会生效

### 调试技巧 4 inline breakpoint

特殊断点：**inline breakpoint**，当一行代码存在多个函数调用时，使用它，我们就可以在任意一个函数前面添加一个断点

### 调试技巧 5 multi-target debugging

较少用到

### 管理扩展

Extensions

VS Code 的扩展非常的丰富，我将它大致分成了以下三类：

- **写代码相关**： 这一类的扩展最多，比如格式化代码的 "Prettier"、调试 PHP 代码的 "PHP Debug"等
- **工具**：这些扩展以工具的形式集成在了 VS Code 当中，比如用于远程开发的 "Remote SSH"
- **自定义相关**：比如用于更换主题、语言包、快捷键的扩展

视频中，我将以`DotENV`这个扩展为例演示

扩展位置：`~/.vscode/extensions`

### 介绍 Command Palette

Activity Bar -> Manager，Command Palette、Settings、User Snippets

快捷键

- `shift + ⌘ + p`，在 Windows 上是：`shift + ctrl + p`。

接着，我们来了解下它的作用，它的作用是：**通过命令来执行一些操作**。VS Code 中的一些操作，可以有多种方式来实现，以放大 VS Code 界面为例，我们可以通过菜单栏选项，也可以通过快捷键，还有就是通过 Command Palette 了。我们可以打开 Command Palette，然后直接输入`zi`就能找到放大 VS Code 的命令。但是需要注意的是：有一些操作，我们只能通过 Command Palette 来实现，比如说更改 VS Code 语言包。正因为有些重要的操作只能在 Command Palette 里实现，所以它非常的重要。这一节课的视频中，你将看到它的具体使用方法。

Command-Palette 常用的一些指令

- 放大：输入`view: zoom in` 或者 `zoom in` 或者 `zi`
- md 预览：`markdown`
- 折叠代码：`fold all`
- toggle 列选择模式：`toggle column selection mode`，

### 介绍 Settings

「Settings」这个功能选项，理解「User」和「Workspace」的区别

- 默认设置（只读）
- 「User setting」 作用域为全局
- 「Workspace setting」 作用域为项目文件夹，一般用作多人协作，控制代码风格

图形化界面设置`ctrl + ,`，或者打开命令面板

[Visual Studio Code User and Workspace Settings](https://code.visualstudio.com/docs/getstarted/settings)

### 介绍 User Snippets

`prefix`，用于指定**关键词**：输入完关键词，按`tab`键，就能立刻生成相应的代码片段
`body`就是用于配置代码片段的内容，它是一个数组类型，数组的每一项就代表代码片段的一行

> [!Note]
> 如果一行代码中存在代码缩进，我们可以使用空格来代替或者使用`\t`
> 如果该行代码存在`"`，我们需要使用反斜杠来对它进行转义，也就是：`\"`

`$0`用于代码片段生成后，光标最后所处的位置，`$1`、`$2`、`$3`...等用于指定光标移动的位置，当我们按`tab`键时，光标会依次切换到`$1`、`$2`、`$3`所在的位置

除了`$`开头的特殊变量，VS Code 还支持很多其它特殊变量

`$CURRENT_YEAR`：当前年
`$CURRENT_MONTH`：当前月

> [!Note] 可以通过下面的文档，查看 VS Code 代码片段中支持的所有特殊变量：[Snippets in Visual Studio Code](https://code.visualstudio.com/docs/editor/userdefinedsnippets#_variables)

可枚举

[Snippets in Visual Studio Code](https://code.visualstudio.com/docs/editor/userdefinedsnippets#_choice)

代码片段生成工具

> [!Note]
> 代码片段生成工具，链接如下：
> 工具网址 [snippet generator](https://snippet-generator.app/?description=&tabtrigger=&snippet=&mode=vscode)
> 源码地址 [GitHub - pawelgrzybek/snippet-generator: Snippet generator for Visual Studio Code, Sublime Text and Atom](https://github.com/pawelgrzybek/snippet-generator)

最佳实践： `c.json`

```json
{
  "header comment": {
    "prefix": "hc",
    "body": [
      "$BLOCK_COMMENT_START",
      " * Author: tsq",
      " * Date: $CURRENT_YEAR-$CURRENT_MONTH-$CURRENT_DATE",
      "$BLOCK_COMMENT_END"
    ]
  }
}
```

### 隐藏 Side Bar

在使用 VS Code 的过程中，我们常常希望为代码编辑区域留出更多的空间，这时我们可以选择隐藏 Side Bar，而隐藏 Side Bar 最方便的操作是使用快捷键。

隐藏 Side Bar 的快捷键如下：

- Mac: `command + B`
- Win: `ctrl + B`

### 介绍 Editor 区域

minimap 以及 breadcrumbs

minimap 位于编辑器的右侧，它有两个作用

- 通过它我们可以对源文件的内容做一个大致的概览
- 可以通过拖动它来快速移动到指定对代码区域
- VS Code 默认会显示 minimap，隐藏对方式是：点击顶部`View`菜单栏并点击里面的`Show Minimap`菜单项。

breadcrumbs 位于编辑器顶部

- 它其实是由两部分组成，以文件名为分割线，文件名左侧显示的是文件在项目中的相对路径，文件名右侧显示的是 Symbol 信息
- Symbol 是对文件内容的一种展现方式，不同的文件类型有不同的展现方式，比如对于面向对象编程语言而言，常常是以类，类的属性，类的方法等方式来展现光标所处行的信息，而对于 html 文件，它则会以 Dom 树的结构来进行展现

### Zen Mode

开启 Zen Mode 有三种方式:smile:

1. 使用菜单栏选项：View > Appearance > Zen Mode
2. 通过 Command Palette，输入关键词: zm
3. 使用快捷键，Mac 是： `Cmd + K + Z`；Win 是 `Ctrl + K + Z`

如果你喜欢在 Zen Mode 下进行工作，推荐你记住下面七个快捷键：（可以在 view 中看到）

| 功能                | Mac 上的快捷键     | Win 上的快捷键     |
| ------------------- | ------------------ | ------------------ |
| 打开 Explorer       | `Cmd + Shift + E`  | `Ctrl + Shift + E` |
| 打开 Search         | `Cmd + Shift + F`  | `Ctrl + Shift + F` |
| 打开 Source Control | `Ctrl + Shift + G` | `Ctrl + Shift + G` |
| 打开 Debug          | `Cmd + Shift + D`  | `Ctrl + Shift + D` |
| 打开 Extensions     | `Cmd + Shift + X`  | `Ctrl + Shift + X` |
| 打开 Terminal       | `Ctrl + \ `        | `Ctrl + \ `        |
| 隐藏 Sidebar        | `Cmd + B`          | `Ctrl + B`         |

通过这七个快捷键，我们可以在 Zen Mode 下，很方便的完成一些常用操作。

### 介绍 Panels

- `PROBLEMS`：它会列出项目中存在问题的代码，而问题可以分成两种，一种是 Warning，代表我们的代码写得并没有错，但是写得不够好，另一种是 Error，代表我们的代码写得有错误。
- `OUTPUT`：它会显示出 VS Code 自身以及第三方扩展的一些日志信息。
- `DEBUG CONSOLE`：它有三个功能，第一，会显示调试器自身的日志信息，第二，会显示项目本身包含的控制台输出，第三，在调试过程中，可以输出本地变量，以及利用本地变量组成的表达式的值。

### Terminal 的使用方式与技巧

- `GUI`: Graphical User Interface
- `CLI`: Command Line Interface

Terminal 是 VS Code 自带的一个工具，在这个工具中我们可以使用命令来操作计算机以及切换不同的 shell，在这一节课你将学习什么是 Terminal 以及和 Terminal 相关的计算机基础知识，同时也会了解众多 shell 的具体使用方式。

对于软件开发者或者计算机系统管理员，常常需要使用命令的方式来操作计算机，而命令的执行需要一个环境，这个环境负责提供命令的输入、输出以及切换不同的 shell。VS Code 所自带的 Terminal 其实就是为提供这样的环境而生

- Windows 中，常常使用 cmd 或者 powershell
- 如果安装了 Git，那么我们也可以使用一个叫做「Git Bash」的 shell，它支持众多 linux 命令，同时也会在命令行提示符中显示 Git 分支名，所以选择「Git Bash」也是一个不错的选择
- 在 MacOS 或者 Linux 中，我们通常使用 bash 和 zsh

因为 Terminal 很重要，推荐大家记住打开或隐藏 Terminal 的快捷键:` ctrl +``  `

### Status bar 的使用技巧

临时文件`ctrl+n`，选择语言，然后格式化`alt+shift+f`

## 第三章 文件及文件夹的使用

### 文件及文件夹的三个特点

- **VS Code 不支持新建模版项目**， VS Code 本身并没有像其它编辑器那样提供一个叫做「New Project」的选项来新建一个模板项目，可以使用下面两种方式来创建模板项目，第一种方式是使用命令行工具，vuejs 的「vue」命令，开发 dotnet core 的「dotnet」命令等等；第二种使用方式是使用扩展，VS Code 中一些扩展可以用于快速新建一个模板项目，比如「Web Template Studio」和「Spring Initializr Java Support」
- **VS Code 不支持新建模板文件**，VS Code 的「New File」功能键并不提供「选择一个模板文件」的功能。所以，在 VS Code 新建文件时，需要手动输入文件名称以及文件后缀名。可以利用 User Snippets 来创建属于自己的代码片段，新建文件后，这样就可以快速生成一些默认内容
- **VS Code 不会对文件及文件夹的显示做重构**。当 VS Code 去加载一个项目时，它不会对项目里的文件及文件夹做重构显示，所以文件及文件夹在磁盘上看上去是什么样，那在 VS Code 中显示就是什么样。但是需要注意的是，VS Code 的 Settings 里的 Exclude 选项里的一些配置，会使得 VS Code 隐藏项目下的一些特殊文件或文件夹，比如用于 git 的".git"文件夹就不会显示在 VS Code 中

### 管理文件及文件夹

新增文件或文件夹，

- 第一种方式，使用项目名称右侧的「新增功能键」
- 第二种方式是使用上下文菜单中等「New File」和「New Folder」
- 第三种方式是使用复制粘贴来快速生成一个文件或文件夹

删除文件或文件夹

- 使用上下文菜单中的「Delete」选项，
- 或者使用快捷键，Mac 是「Cmd + Delete」；Win 是「Delete」。

对文件或文件夹重命名，

- 可以使用上下文菜单中「Rename」选项，
- 或者使用快捷键，Mac 是「Enter」；Win 是「F2」。

对文件或文件夹按名称进行搜索

- 先将鼠标在文件列表的空白处做一次点击，当四周出现一个蓝色当框时，我们就可以在键盘上输入搜索词，VS Code 会高亮搜索结果

将文件或文件夹在磁盘中进行打开，这个选项在 Mac 上叫「Reveal in Finder」，在 Win 上叫「Reveal in File Explorer」，在 Linux 上叫「Open Containing Folder」

第二个常用选项是「Open in Integrated Terminal」，使用它，我们可以快速打开 Terminal 且 Terminal 的当前工作目录为该文件所在目录；第三个常用选项是「Copy Path」用于获取文件或文件夹的绝对路径；第四个常用选项是「Copy Relative Path」用于获取文件或文件夹的相对路径。

### Dirty Write

Dirty Write 的发生是因为经历了如下三个步骤：

1. 我们在 VS Code 中对某个文件进行了编辑，且文件尚未保存
2. 除 VS Code 之外的其它进程对这个文件进行了修改并将修改保存到了磁盘中
3. 我们在 VS Code 中对这个文件做保存操作。

由于上面的第二步（别人的版本）和第三步（我们的版本），会对同一个文件的内容产生了两个不同版本，所以就会导致文件在保存时发生错误，这种错误就叫做「Dirty Write」。

为了解决 Dirty Write，让文件能够顺利保存，VS Code 提供了两个选项，一个叫做「Override」，一个叫做「Compare」，Override 选项会直接使用我们的版本，别人的版本会被移除，而选择「Compare」时，VS Code 会打开差异视图，来让我们选择到底使用哪个版本，在选择的时候，如果最终版本的内容，在两方中都有，我们还需要先做 merge 操作，再来选择使用哪个版本。

在实际的工作中，编程语言的包管理工具的配置文件常常会发生 dirty write 现象，在使用的时候，我们需要注意下：对包管理工具的配置文件进行修改后，要及时进行保存，以免触发 Dirty Write。

### Preview Mode

取消 Preview mode 方式有三种，分别是：**双击当前文件名**、**双击当前文件的 Tab**和**对当前文件进行编辑**。

### 文件使用技巧 1: 寻找文件的三种方式

使用场景一： 知道文件名

VS Code 提供一个快捷键叫做`Quick Open`，这个快捷键在 Windows 上`Ctrl+P`，在 macOS 上`Cmd+P`
这个快捷键是寻找文件最方便的方式，平时用的也最多，我们应该牢记这个快捷键。

使用场景二： 不记得文件名，但是记得文件里包含一定的内容且该文件处于某个文件夹下

当我们不记得文件名时，我们就不能用第一种方法了。软件项目的源代码通常会根据功能或者模块需求被分配到不同的文件夹下，此时如果我们记得要找文件里包含一定的内容，且该文件处于某个特定的文件夹下，我们可以将鼠标移动到该文件夹上方，鼠标右键打开上下文菜单，并选择`Find in Folder`，这样 VS Code 会打开 Search 功能且这时候 Search 功能的搜索范围会被自动限定到刚刚选择的文件夹上，这时候，因为搜索范围被缩小，搜索结果将会变少，这有助于我们更快的找到想要的文件。

使用场景三： 不记得文件名，不记得文件内容，但记得它有个「邻居」

不记得文件名，也不记得文件内容，我们就不能用前两种方法了，这时候如果我们记得要找的文件有个「邻居」（这里的邻居，指的是两个文件处于同一目录或相近目录），我们就可以通过找邻居的方式找到想要的文件。这样做，其实是利用了 VS Code 打开一个文件的同时，该文件在 Explorer 中所在的目录会被自动展开的特性。这样，通过先找邻居，就可以帮助我们间接的找到想要的文件。

### 文件使用技巧 2: 文件快速导航

多个文件之间

使用快捷键`Ctrl`+`Tab`，它的具体使用方法是：

单个文件内部

`Edit Location`，我们常常需要能够快速回到上个编辑点

在 VS Code 中做编辑点切换，使用快捷键

- Windows: `Alt Left` 和 `Alt Right`
- macOS: `Ctrl -` 和 `shift Ctrl -`

### 文件使用技巧 3: Pin Tab

Pin Tab 这个选项有三种设置，我个人推荐使用`compact`而不是默认的`normal`，相应的设定方法是

1. 打开`Settings`
2. 输入关键词`pin tab`进行搜索
3. 找到设置项`Pinned Tab Sizing`并选择`compact`设置项

使用 Pin Tab，可以带来以下几点好处：

1. 被 Pin 的 Tab 总是会固定在 Tab 区域的开始，方便随时进行切换
2. 滚动 Tab 区域时，被 Pin 的 Tab 不会发生滚动，方便随时进行切换
3. 使用"Close All"时，被 Pin 的 Tab 不会被关闭，方便保留住重要的文件

### 文件使用技巧 4: 单个文件内的搜索和替换

Search 工具

使用快捷键：macOS 是 `Cmd` + `F`；Windows 是 `Ctrl` + `F`

之后我们就能看到文件顶部浮现出的搜索以及替换输入框了。两个功能: `Aa`和`Ab|`

- `Aa`: 代表是否开启**大小写匹配**功能，一旦开启这个功能，文本的匹配就变得大小写敏感了（VS Code 默认使用的是大小写不敏感）。
- `Ab|`: 代表是否开启**全单词匹配**功能，一旦开启这个功能，文本的匹配必须作用于一个完整的单词，比如文件中有个单词叫`username`, 如果这时候我们搜索`user`，那么，这时候我们是搜不到结果的，因为文件里只有一个叫`username`的单词，而没有一个叫`user`的单词

### 文件使用技巧 5: 文件的自动保存与自动格式化

自动保存 功能设置方法如下：

1. 打开 Settings
2. 搜索`auto save`
3. 找到`Files: Auto Save`选项并进行设置

自动格式化 功能设置方法如下：

1. 打开 Settings
2. 搜索`format`
3. 找到`Editor: Format On Save`选项并进行设置

对于自动保存功能，我个人推荐不使用自动保存功能，养成手动保存的好习惯；对于自动格式化功能，需要提醒的是，VS Code 默认只支持部分文件类型的格式化，比如：HTML，CSS，JS，JSON 等，为了支持其它文件类型的格式化，需要安装相应的扩展

### 文件使用技巧 6: 文件比较

在工作或者学习的过程中，我们有时候需要对两个文件进行比较，以此来查看它们在内容上的不同之处。利用 VS Code，我们可以很容易实现这个功能。

为了对两个文件进行比较，我们可以这样做：

1. 鼠标点击第一个文件名
2. 按住`Shift`键，鼠标单击另一个文件的文件名
3. 鼠标右键，选择「Compare Selected」

这样，VS Code 就会打开差异视图，高亮这两个文件在内容上的不同之处。

### 文件使用技巧 7: Timeline

如果我们的项目是使用 Git 管理的，那么，当我们打开某一个源代码文件，然后展开 Timeline，就可以看到这个文件的 Git 提交记录列表，列表按照提交时间由近及远自上而下排列，每一列分别标注有 commit message，提交人，提交日期等信息。单击这一列，VS Code 会打开差异视图，高亮这次提交所修改的地方。

### 文件使用技巧 8: 快速创建文件或文件夹

使用`/`字符递归创建文件夹或者文件

### 文件使用技巧 9: 快速撤销修改

VS Code 内建了一个命令叫做「Revert File」，使用它，我们可以快速撤销对某个文件的修改。

需要注意的是，撤销的范围是：从当前点到上一次保存点之间的所有修改。

### 文件使用技巧 10: 配置项-File Associations

通过修改配置项中的"File Associations"，我们可以自定义文件关联，将某种文件关联到某个 VS Code 支持的文件类型中，以便支持语法高亮，格式化等功能。

Settings 搜索"File Associations"，找到这个配置项，然后点击「Add Item」，这时候会出现 key，value 输入框，关于 key，有两种输入模式：

1. 输入文件后缀名，例如，在 key 的地方输入「\*.styl」，在 value 的地方输入「css」，styl 后缀名的文件就会被关联到 css 文件类型。
2. 输入文件名，例如，在 key 的地方输入「README」，在 value 的地方输入「markdown」，我们就可以将一个名为「README」的文件关联到 markdown 文件类型。

### 文件使用技巧 11: 查看源文件的健康状况

1. Problems Panel： 这里会列出项目中所有的 Problems，以及每一个 Problem 所在的源文件及行号。
2. Status bar 左侧：这里会分别列出项目 Problems 中 Error 和 Warning 的个数。
3. Minimap：当一个源文件某一行出现 Error 时，minimap 中会以红色来提醒，当出现 Warning 时，会以黄色来提醒。
4. 文件名右侧显示的数字：如果一个源文件有多个 error，那么数字就代表 error 的个数并以红色字体来显示，warning 也类似

### 文件使用技巧 12: 文件的拖入与拖出

对于文件的拖入，有两种不同的效果

- 如果我们是将某个文件拖入 Editor 区域，那么仅仅是在 VS Code 中打开这个文件
- 如果我们是将这个文件拖入 Explorer 的文件列表区域，那么这个文件将会被复制到 VS Code 中。

对于文件的拖出，我们可以在文件列表中选择某个文件，或者是在 Editor 的 Tab 区域选择某个文件，然后将这个文件拖入其它的地方，比如桌面，那么一旦释放鼠标，这个文件就会被复制一份到指定的地方

### 文件使用技巧 13: 文件内容的自由缩放

VS Code 的 Editor 的区域支持文件内容的自由缩放，我们可以利用这个功能，快速调整代码的字体大小。

为了开启这个功能，我们需要配置一个设置项，在 Setting 里搜索「mouse wheel zoom」，找到这一项并将它打为勾，这样我们就开启了这个功能。

使用的时候，我们首先需要打开项目里的某个文件，将鼠标定位到其中某一行，按住 Ctrl 键同时滚动鼠标滚轮，这时候就能看到文件的内容被自由的缩放了。
如果你没有使用鼠标而是在使用触控板，那么只需要使用缩放手势（大部分触控板使用两个手指做开合的动作）就可以完成同样的操作。

### 文件使用技巧 14: 配置项-Compact Folders

如果一个文件夹下面只有一个文件夹，这时候 VS Code 默认采用横向的方式在文件列表中显示这个文件夹，有时候我们可能希望改变这种显示方式，采用一般的竖向显示。

为了改变这种默认的显示方式，我们可以在 Settings 里面搜索「Compact Folders」，找到配置项「Explorer：Compact Folders」，将默认的勾取消掉即可。

### 文件使用技巧 15: Screencast Mode

VS Code 里有一个特殊的功能叫做「Screencast Mode」，一旦我们将它开启，当我们的鼠标在源文件中移动时，VS Code 会以一个红色的圆圈来提醒，当我们在键盘上输入任何一个字符时，它也会在屏幕中即时显示出当前按键字符。当我们参加一个代码 review 会议或者是制作一些代码编辑技巧的视频教程时，这个功能将会显得格外有用，它可以让观众更好的接受我们想要表达的信息。

为了开启这个功能，首先我们需要打开「Command Palette」，接着在输入框中输入「screencast mode」，找到命令「Toggle Screencast Mode」然后执行，这样我们就开启了这个功能。为了关闭这个功能，我们只需要将这条命令再执行一遍就可以了。

### 文件使用技巧 16: Save All

想一次性保存所有的文件

- 方式一：通过菜单栏选项。File -> Save All。
- 方式二：通过快捷键。macOS 是「Option + Mac + S」， Windows 是「Ctrl + Shift + S」。
- 方式三：通过命令。打开 Command Palette，输入「saveall」，找到命令「Save All」。

### 文件使用技巧 17: 在 Source Control 中打开文件

在 Source Control 中，当我们点击某个文件，VS Code 这时会打开差异视图，我们在对文件内容做对比的时候，如果发现需要对文件做继续修改，这时我们可以利用 Source Control 的「Open File」功能。

「Open File」这个功能键存在于两个地方，一个是顶部右上角第一个图标，还有一个是在文件名右侧第一个图标，点击它，我们就可以快速将这个文件打开。

### 文件使用技巧 18: 在 Source Control 中调整文件的排序规则

调整的方法是，在 Source Control 中点击右上角的三个点，之后点击「View & Sort」，就可以看到三个排序选项：

- Sort by Name: 按照文件名进行排序，也就是 a 字母开头的文件名会在最前面，z 字母开头的会在最后面。
- Sort by Path：按照文件路径进行排序，也就是位于相同文件夹的文件会排在一起。
- Sort by Status：按照 Git 状态进行排序，也就是相同的 Git 状态的文件会排在一起。

### 文件使用技巧 19: 配置项-Wrap tab

当我们在 VS Code 中打开很多文件时，编辑器顶部的 tab 区域会被很快占满，占满之后就会出现滚动条，我需要移动滚动条才能查看其它已打开的文件。VS Code 中有个配置项，一旦我们将它打开，将会采用换行而非滚动条的方式对 tab 区域进行展示，如果你是在一个比较大屏幕的外接显示器上使用 VS Code，推荐打开这个配置项。

为了打开这个配置项，我们需要在`Settings`里面搜索`wrap tab`找到`Editor: Wrap Tabs`这个选项，将它勾选即可。

### 文件使用技巧 20: 配置项-Files exclude

项目当中常常会存在一些我们在开发过程中无需关注的文件或文件夹，比如说包文件夹，构建产生的文件夹等等，这时可以通过更改一个配置项将这些文件或文件夹通通隐藏，这样项目的文件列表就会显得更加干净整洁

为了配置，我们需要在`Settings`里面搜索`files exclude`找到`Files: Exclude`这个选项，接着点击`Add Pattern`按钮新增一个隐藏配置项。

为了减少影响范围，建议在`Workspace`范围下修改这个配置项。

### 文件使用技巧 21: Open in editor

在 VS Code 中做搜索时，搜索结果会出现在 sidebar 中，还可以「Open in editor」

在 sidebar 的搜索结果列表的最上方，我们可以看见一个按钮叫做「Open in editor」，点击它就可以将当前搜索结果在一个新的 editor 中显示，这时所有的搜索结果就会在这一个 editor 中显示，方便我们更快的查看所有的搜索结果

find in selection 可以配置 控制自动打开“在选定内容中查找”的条件。

### 文件使用技巧 22: Search editor context

在上一节课，我们学习了利用「Open in editor」就可以新打开一个 editor，在这个 editor 中，VS Code 会一次性显示所有的匹配项，这一节课，我们来进一步学习下这个 editor 顶部的几个功能项，它可以帮助我们快速调整匹配项的参考上下文。

有时候，为了判断匹配项是否真的是我们想要找的结果，我们需要利用匹配项周围的一些代码来协助我们做判断，VS Code 默认会显示匹配项的上一行和下一行，如果我们希望 VS Code 能够提供更多的上下文，我们就可以利用顶部右侧倒数第二个选项，点击它或者直接输入数字就可以调整上下文了。

在有些情况下，我们可能不希望有匹配项上方或下方代码的干扰，我们就可以点击顶部最右侧的选项，这样就可以只显示匹配项这一行。

### 文件使用技巧 23: 保存 Search Editor

「Search Editor」有个非常特殊的功能，就是可以被单独保存，这一节课我们就来学习一下它的使用方法以及使用场景。

为了保存「Search Editor」，我们只需要按保存快捷键（Mac 是 cmd+s, Windows 是 ctrl+s），这样 VS Code 会提示我们新建一个「.code-search」后缀名的文件，这种后缀名的文件可以被 VS Code 直接打开。

在以下两种场景下，我们可以选择保存「Search Editor」：

1. 频繁的搜索相同的词。
2. 搜索词或搜索条件较为复杂。

### 文件使用技巧 24: 使用搜索历史记录

在搜索输入框中按「↑」，触发历史记录

另外，类似的功能，VS Code 的 Source Control 的 Message 输入框也支持。

### 文件使用技巧 25: 在 Explorer 中搜索文件

使用方法很简单，首先我们需要确保文件列表处于**激活状态**

这个**激活状态**我们有两种方法可以实现

- 随便点击文件列表中的某个文件
- 在文件列表的空白处单击一下

处于**激活状态**下，我们就可以直接输入文件名的关键词，这时候就可以在 Explorer 的右上方看到自己输入的关键词，同时 VS Code 会将匹配到结果（文件或文件夹）进行高亮。

将鼠标 hover 在右上角的关键词上时，这时候会显示出两个功能键

- 右侧的「叉」，点击后用于清除此次搜索，
- 而左侧的「三条横杠」，点击后会过滤出匹配到的结果

### 文件使用技巧 26: Find in selection

1. 打开单个文件搜索功能（Win：Ctrl+F；Mac：Cmd+F）
2. 用鼠标选择一片想要搜索的区域
3. 单击搜索工具栏右数第二个功能键

### 文件使用技巧 27: 替换时使用保留大小选项

在做替换操作时，VS Code 的 Replace 输入框右侧有一个高级选项，上面标有「AB」的字样，这一节课我们就来学习下它的用法，有些情况下，使用这个选项可以带来很大的帮助。

这个选项的名字叫做**Preserve Case**，翻译成中文就是「保留大小写」。它的具体作用是：当我们做替换操作时，匹配结果中如果包含了一部分大小写不一致的匹配项，使用 Preserve Case 可以让替换值也跟随原本的大小写规则。

一个常见的使用场景是，为一个类以及同名的类的实例变量更换一个名字。

### 文件使用技巧 28: 多行搜索与替换

在做搜索或是替换操作时，有时候我们希望输入的内容能够换行，这一节课我们就来学习下换行的小技巧。

为了支持换行，有两种方式可以实现：

- 在需要换行的时候，按下「ctrl+enter」键
- 手动在 VS Code 中复制那段需要匹配的多行内容，并粘贴在搜索输入框中

### 文件使用技巧 29: 使用 github.dev 快速打开 Github 仓库

当我们在 Github 上查看某个仓库时，我们可以使用一个快捷键快速将这个项目在一个基于浏览器版的 VS Code 中打开，这样我们就可以利用 VS Code 强大的文件搜索能力快速找到想要的文件

这个快捷键非常简单，只需要按一下键盘上的**点** `.` 键即可。（需要注意的是，你需要先登陆 Github，才能使用这个快捷键。）

顺便说一下，这个基于浏览器的 VS Code 其实背后用的是 Github 的**Codespaces**，它可以为开发者提供基于云端的 IDE。如果你对此感兴趣，可以前往[https://github.dev](https://github.dev)查看详情。

### 文件使用技巧 30: 使用双击快速创建文件

- 创建一个临时文件：当所有文件 tab 都关闭时，这时候对 Editor 区域进行双击，就可以创建一个临时文件
- 在项目根目录下创建一个文件，当我们在项目列表的空白区域双击时，就会出现文件名输入框，输入完文件名，文件就被创建完成

### 文件使用技巧 31: 配置新建文件的默认语言

在 VS Code 中新建一个临时文件的时，默认关联的文件类型是`Plain Text`，（类似 txt 文件类型），如何更改默认关联的文件类型

我们可以通过输入关键词「files default language」在 Settings 中找到这个配置项，之后在输入框中填入想要的文件类型即可，比如输入`markdown`后，新建临时文件的默认类型就改为 markdown 了

另外这个输入框还支持填入一个特殊的值：`${activeEditorLanguage}`，它的意思是新建临时文件的类型**动态的来自于当前被激活的文件**，基于当前打开的标签页来决定关联的文件

### 文件使用技巧 32: 打开历史项目快捷键

快捷键： `Ctrl`+`R`.

使用这个快捷键后，页面会显示一个弹窗，使用这个窗口我们可以完成以下几件事：

1. 查看所有历史项目
2. 当历史项目过多时，我们可以通过顶部的输入框，输入关键词来对项目名称进行过滤
3. 在打开某个项目的时候，可以通过配合其它按键来选择是新建一个窗口，还是覆盖当前窗口

### 文件使用技巧 33: 将 VS Code 设置为 Git GUI 的默认编辑器

1. Github Desktop：设置路径：`Preferences > Integrations > External Editor`
2. Gitkraken：设置路径：`Preferences > General > External Editor`
3. Sourcetree：设置路径：`Preferences > Custom Actions`
   - Menu Caption: `Open in VS Code`
   - Shortcut: `Ctrl`+`o`
   - Script to run: `code`
   - Parameters: `$REPO`

最后补充一个知识点：对于 Github 上一个项目，可以有多种方式将它在一个外部的编辑器中快速打开。

1. `.`: 使用按键"点"
2. `1s`: 手动更改 URL，例如：<https://github.com/vscodecool/vscodecool.github.io> 改为 <https://github1s.com/vscodecool/vscodecool.github.io>
3. `box`: 手动更改 URL，例如：<https://github.com/vscodecool/vscodecool.github.io>改为<https://githubbox.com/vscodecool/vscodecool.github.io>

适合于静态 HTML 或者是 webapp

### 文件使用技巧 34: 将 VS Code 设置为 Git Commit 的默认编辑器

配置方法很简单，首先需要确保**code**命令已经存在，之后只需要执行下面这条命令即可

```sh
git config --global core.editor "code --wait"
```

### 文件使用技巧 35: 使用 Timeline 查看任意两个 commit 的差异

VS Code 的**Timeline**会显示出某个文件的所有 git 提交记录，有时候我们想查看任意两个 commit 之间的差异，这一节课，我们就来学习如何实现这一操作。

实现方式分两步：

1. 右键要比较的第一个 commit，选择`Select for Compare`。
2. 右键要比较的另一个 commit，选择`Compare with Selected`。

这样，VS Code 就会打开一个差异视图，高亮这两个 commit 之间的差异。

### 文件使用技巧 36: 使用 code 命令查看两个文件的差异

为了查看两个文件在内容上的差异，我们在前面的「文件使用技巧 6」已经学过一种方法，这一节课我们来学习另外两种方法。

方法二和上一节课的查看任意两个 commit 之间差异的方式一致：

1. 右键要比较的第一个文件，选择`Select for Compare`。
2. 右键要比较的另一个文件，选择`Compare with Selected`。

方法三是使用`code -d`命令。例如，如果要比较`a.txt`和`b.txt`两个文件，只需要在命令行中输入以下命令即可：

```sh
code -d a.txt b.txt
```

### 文件使用技巧 37: 利用临时文件查看差异

在项目开发的过程中，如果我们需要查看两段文本的差异，而这两段文本并不来自于项目当中的两个文件，这时候我们可以借助新建两个临时文件的方式，将比较在临时文件中进行，比较完成之后再对两个临时文件进行销毁。

具体做法是：新建两个临时文件，将两段文本分别粘贴到临时文件 1 和临时文件 2 中，然后：

1. 右键第一个临时文件，选择`Select for Compare`。
2. 右键另一个临时文件，选择`Compare with Selected`。

### 文件使用技巧 38: Run Active File

对于一些脚本语言所编写的代码文件，比如`.js`、`.py`、`.ruby`等文件，在 VS Code 中，我们其实是可以通过运行一条叫做`Run Active File In Active Terminal`的命令，就可以直接执行这个文件并将结果显示到 VS Code 内建的 Terminal 当中。

首先，调用方法是：在 Command Palette 中输入`Run Active`找到命令`Run Active File In Active Terminal`这条命令并执行。

其次，关于**Shebang**的写法在 macOS、Windows、Linux 上会有不同，如果需要使用这种方式来运行某个文件，最好事先在网上搜下相关的 shebang 的写法。

我这里给出几个 macOS 上 shebang 的写法：

1.nodejs

```js
#!/usr/bin/env node

console.log("hello world from node");
```

2.python

```py
#!/usr/bin/env python3

print("hello world from python");
```

3.ruby

```ruby
#!/usr/bin/env ruby

puts "hello world from ruby";
```

> [!Warning]
>
> 在 macOS 上，需要先使用`chmod +x 文件名`来将文件变成可执行文件

### 文件使用技巧 39: 快速寻找出错点

下面的内容就是一段错误信息的示例：

```sh
demo.c:4:24: error: expected ';' after expression
    puts("hello world")
                       ^
                       ;
1 error generated.
```

场景一：错误文件已在 VS Code 中打开

快捷键`Ctrl`+`G`，输入`line:column`，回车

场景二：错误文件尚未被打开

使用`Quick Open`快捷键，在 macOS 上是`Cmd`+`P`；在 windows 上是`Ctrl`+`P`，接着在弹出框中输入`name:line:column`（P.S 这里的`name`不需要完整书写，只需要保证搜索结果列表的第一项就是我们要找的文件即可），最后回车。

### 文件使用技巧 40: 快速寻找出错点 2

如果使用 VS Code 内建的 Terminal

将鼠标悬浮在出错文件的上方，接着，如果是 macOS，按住`Cmd`，如果是 windows，按住`Ctrl`，这时候文件名的下方应该会出现下划线，最后只需要做一次单击，VS Code 就会自动定位到出错文件以及具体的行和列。

如果使用外部的 Terminal

使用 code 命令，加上`--goto`参数：

```sh
code --goto demo.c:4:24
```

### 文件使用技巧 41: 使用 Revert File 命令快速恢复文件修改

当对一个文件进行了多次修改（尚未进行保存），之后又突然想撤销这几处修改，除了使用撤销键，我们还可以使用一个命令，叫做`Revert file`
它可以一次性将文件恢复到上一次的保存状态

### 文件使用技巧 42: 使用 Go to Match 命令快速跳转到搜索匹配项

在做搜索的时候，有时候匹配项可能会有很多，为了能够快速跳转到某一处匹配项，我们可以利用一条命令叫做：`Go to match`.

例如：

- 使用`1`跳转到第一处匹配项。
- 使用`-1`跳转到最后一处匹配项。

### 文件使用技巧 43: 使用 New File 选项创建指定类型的文件

在菜单项「File > New File...」或者使用命令`Create: New File...`，就可以在创建文件的时候先选择一种文件类型，默认只有纯文本类型和 Jupiter Notebook 类型，当我们安装了一些第三方扩展之后，这里的文件选项也会相应的增多。

我们在项目开发的过程中，常常有些 idea 或者疑问需要验证，这时候我就可以利用这种方式创建一个相应的 notebook 来快速验证我们的想法

### 文件使用技巧 44: 两种方式自动将文件加入 gitignore

- 方式一：在`Source Control`视图中，鼠标右键文件，然后选择`Add to .gitignore`。
- 方式二：首先打开文件，然后在`Command Palette`输入`ignore`找到命令`Git: Add to .gitignore`并按回车。

> [!Note]
> 需要提醒的是，使用方式二之前，当前项目必须先被纳入 Git 管理，否则命令不存在

### 文件使用技巧 45: 使用 Fast scrolling 加快滚动速度

按住以下键的同时再进行滚动，滚动速度就会`x5`

- macOS: `option`
- windows: `alt`

### 文件使用技巧 46: 使用 Local History 查看文件的修改历史记录

Timeline 中除了有之前介绍过的`Git history`，也有不依赖 Git 的`Local History`，通过它可以查看每个文件的修改历史记录

这样，当我们不小心对文件的内容做了删除，通过这个功能就可以快速将文件内容恢复到之前的状态

### 文件使用技巧 47: 找回被不小心删除的文件

如果一个重要的文件被我们不小心删了，在没有使用 Git 的情况下，我们可以通过「在同一个目录下新建一个同名的文件」的方式，在`Timeline`的`Local history`中找回这个文件。

也可以进入下面的`Local history`的保存目录，直接找到某个版本的源文件。

- macOS: `cd ~/Library/Application\ Support/Code/User/History && open .`
- windows: `cd %APPDATA%\Code\User\History && explorer .`

### 文件使用技巧 48: 临时文件的保存位置

临时的代码或者笔记的保存位置

- macOS: `cd ~/Library/Application\ Support/Code/Backups && open .`
- windows: `cd %APPDATA%\Code\Backups && explorer .`

### 文件使用技巧 49: 使用 Collapse 让项目目录看起来更加的简洁

折叠所有的文件夹：点击 Explorer 顶部工具栏的`Collapse`功能，

### 文件使用技巧 50: 快速查看修改点

修改了某个文件之后，在按保存之前，有时候我们会突然想了解一下刚刚到底对文件做了哪些变更

命令面板：`Compare Active File with Saved`

### 文件使用技巧 51: 使用`F2`快速修改文件名

在修改文件名的时候，按下`F2`，会进行下面的循环：

1. 「名称」
2. 「名称」+「后缀」
3. 「后缀」

### 文件使用技巧 52: 粘贴

从**1.85**版本开始，VS Code 开始支持粘贴来自从文件系统中的复制

快捷键：

- Windows： Ctrl C, Ctrl V
- macOS： Cmd C, Cmd V

## 第四章 自定义 VS-Code

## 第五章 代码编辑技巧

## 第六章 开发中的具体使用

## 第七章 通用扩展推荐

## 第八章 扩展的开发与发布

## 参考文献

[VS Code 入门教程 2020 #02 如何获取帮助\_哔哩哔哩\_bilibili](https://www.bilibili.com/video/BV1f741137Uf/)

[GitHub - vscodecool/vscodecool.github.io: 《VS Code 入门教程》笔记](https://github.com/vscodecool/vscodecool.github.io)

在阅读这篇文档的过程中，如果发现一些错误，欢迎在 Github 上提出[pr](https://github.com/vscodecool/vscodecool.github.io/pulls)或者[issue](https://github.com/vscodecool/vscodecool.github.io/issues)。

up 主的三个网站也上传了视频

- [Youtube](https://www.youtube.com/watch?v=HfHsX2yxfNg&list=PLNEp_Xli9W_lUQTtRYG7883bGah63UkNB)
- [Bilibili](https://space.bilibili.com/30677217/channel/detail?cid=105022)
- [Toutiao](http://www.ixigua.com/pseries/6856506428144747012)
