# code-runner

## [官网](https://marketplace.visualstudio.com/items?itemName=formulahendry.code-runner)

## 自定义变量

```shell
变量                     示例                        说明
$workspaceRoot:          D:/cwd/                    工作目录
$dir:                    D:/cwd/path/to/file/       文件父目录
$dirWithoutTrailingSlash:D:/cwd/path/to/file        文件父目录
$fullFileName:           D:/cwd/path/to/file/xxx.md 文件路径
$fileName:               xxx.md                     文件名
$fileNameWithoutExt:     xxx                        去除后缀的文件名
$driveLetter:            D:                         C盘或者D盘
$pythonPath:             D:/x/y/python.exe          python路径
```

## setting.json 中的一些设置

```json
"code-runner.runInTerminal": true,              // 是否在命令行运行
"code-runner.executorMap": {                    // 执行映射
    "python": "cd $dir && python -u $fileName"
  },
  "code-runner.executorMapByFileExtension": {   // 执行映射（根据后缀名）
    ".md": "echo $pythonPath"
  }
```

## 参考资料

- [我写的 Code Runner，下载量突破 3000 万了！ - 知乎](https://zhuanlan.zhihu.com/p/430217524)