---
type: basic-note
title: tldr
create_date: 2025-07-03
update_date:
tags:
description:
---

## 安装

```sh
# node 安装
npm install tldr -g
# brew 安装
brew install tlrc
# 或者
pip3 install tldr
pipx install tldr
```

## 全局配置

```sh
#linux
export TLDR_LANGUAGE="zh"
export TLDR_CACHE_ENABLED=1

#windows
$env:TLDR_LANGUAGE="zh"
$env:TLDR_CACHE_ENABLED=1
```

## 主题设置

用户文件夹下新建`.tldrrc`

```json
{
  "themes": {
    "ocean": {
      "commandName": "bold, cyan",
      "mainDescription": "",
      "exampleDescription": "green",
      "exampleCode": "cyan",
      "exampleToken": "dim"
    },
    "myOwnCoolTheme": {
      "commandName": "bold, red",
      "mainDescription": "underline",
      "exampleDescription": "yellow",
      "exampleCode": "underline, green",
      "exampleToken": ""
    }
  },
  "theme": "ocean"
}
```

[tldr-pages/tldr-node-client: Node.js command-line client for tldr pages](https://github.com/tldr-pages/tldr-node-client#configuration)

## 语言设置

设置环境变量`LANG`为 `zh_CN.UTF-8`

如果不成功运行以下命令

```shell
tldr --update
```

[tldr/CLIENT-SPECIFICATION.md at main · tldr-pages/tldr](https://github.com/tldr-pages/tldr/blob/main/CLIENT-SPECIFICATION.md#language)

## 参考资料
