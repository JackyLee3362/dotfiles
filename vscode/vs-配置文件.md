# .vscode 配置文件

## launch.json

[vscode 里的 launch.json 是干什么用的](https://www.cnblogs.com/ttyyou/p/13780718.html)

"type"，"request"，"name"这三个是必须要配置的，不管你用什么编程环境

type 指定编程环境，比如 node，php，java，llvm 等

request 指定调试模式，vscode 只有两种调试模式，launch 和 attach

name 给配置项起一个名字。launch.json 是一个 configurations，里面可以有很多个配置，这里的 name 就是配置的名字。

```json
{
  "version": "0.2.0",
  "configurations": [
    {
      "name": "Py调试-当前文件",
      "type": "debugpy",
      "request": "launch",
      "program": "${file}",
      "console": "integratedTerminal"
    },
    {
      "name": "Py调试-前后端",
      "type": "debugpy",
      "request": "launch",
      "cwd": "${workspaceFolder}",
      "module": "main"
    }
  ]
}
```

- [vscode debug设置参数和环境变量_vscode debug configuration-CSDN博客](https://blog.csdn.net/weixin_43082343/article/details/126618416)

## task.json

## setting.json

[文章](https://windowsmacos-vscode-c-llvm-clang-clangd-lldb.readthedocs.io/)

## extensions.json

### 显示内置拓展

```sh
命令面板 ctrl + shift + p
> Show Build-in Extensions

或者

侧边栏拓展 ctrl + shift + x
搜索 @buildin
```

## 显示所有扩展

```sh
code --list-extensions
```

## `extensions.json`

```json
{
  "recommendations": [
    "dbaeumer.vscode-eslint",
    "esbenp.prettier-vscode",
    "Vue.volar"
  ]
}
```

然后在拓展侧边栏搜索框输入`@recommended`

然后选择一键安装工作区的拓展

todo: 写一个非常简单的数据库，然后对插件进行管理

todo 先写一个 java 的配置