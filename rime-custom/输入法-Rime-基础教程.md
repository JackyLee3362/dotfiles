---
title: Rime 使用教程
tags:
  - rime/教程
create_date: 2024-10-08
update_date:
  - 2025-02-23
  - 2025-02-24
---

## 基础配置

推荐阅读

- [Home · rime/home Wiki](https://github.com/rime/home/wiki)
- [RIME 少数派教程](https://sspai.com/post/84373 "自由输入法 RIME 简明配置指南 - 少数派")

### 别人已经配置好的方案

已经配置好的：
[iDvel/rime-ice: Rime 配置：雾凇拼音 | 长期维护的简体词库](https://github.com/iDvel/rime-ice)

官方速查
[weasel.yaml 速查](https://github.com/rime/weasel/wiki/weasel.yaml-%E9%80%9F%E6%9F%A5 "weasel.yaml 速查 · rime/weasel Wiki")

## FAQ

### 如何取消 ctrl+grave(`) 的快捷键

```yaml
switcher:
  hotkeys:
  # - Control+grave # 注释该行
```

### 如何修改日期转换的默认前缀？

雾凇拼音中，日期默认前缀是 `rq`，时间默认前缀是 `sj`，应该如何修改呢？

首先这是 lua 脚本，名字是 `lua/date_translate.lua`，其中的源码

```lua
function M.init(env)
    local config = env.engine.schema.config
    env.name_space = env.name_space:gsub('^*', '')
    M.date = config:get_string(env.name_space .. '/date') or 'rq'
    M.time = config:get_string(env.name_space .. '/time') or 'sj'
    M.week = config:get_string(env.name_space .. '/week') or 'xq'
    M.datetime = config:get_string(env.name_space .. '/datetime') or 'dt'
    M.timestamp = config:get_string(env.name_space .. '/timestamp') or 'ts'
end
```

`env.name_space` 中返回的是脚本的文件名（date_translate），
所以我们去雾凇拼音的配置文件找到

```yaml
# Lua 配置: 日期、时间、星期、ISO 8601、时间戳的触发关键字
date_translator:
  date: rq # 日期： 2022-11-29
  time: sj # 时间： 18:13
  week: xq # 星期： 星期二
  datetime: dt # ISO 8601： 2022-11-29T18:13:11+08:00
  timestamp: ts # 时间戳： 1669716794
```

看到这里就知道怎么配置了。

### 如何添加自定义表情？

主要是 git 提交使用。

### 如何配置输入「 和 」？

雾凇拼音默认中文输出花括号为 「」。

### 安卓手机如何使用？

使用 [雨燕输入法](https://github.com/gurecn/YuyanIme "gurecn/YuyanIme: 语燕拼音输入法-一款基于Rime定制开发的九键、全拼、双拼、手写、火星文等方案、支持悬浮、单手、数字行等键盘模式的中文输入法")
直接安装包就可以。

但是目前没有同步功能，
作者说后续回加入。
但是这几天体验了以后，

> **2025-02-26 更新**
> 感觉雨燕输入法不太行，
> 主要是不太智能，
> 界面也还需打磨，
> 之后再观望吧。

也看到这篇文章
[Android 使用 Rime](https://1900.live/last-puzzle-android-rime-input/ "最后一块拼图：在Android手机上使用Rime输入法 | @1900'Blog - All work and no play makes Jack a dull boy")
讲的是使用 `fcitx5-android`，但是这个没有九宫格，pass。

### 如何添加自定义词组

1. 添加字典
2. 添加短语

```yaml
# 在 custom_phrase.txt 中加入
# --------------git---------------
🎉	git 创建
🎉	tada 创建
🚧	git 工作
✅	git 测试
✅	test 测试
🎨	git 格式化
🎨	format 格式化
📝	git 文档
📝	doc 文档
🍱	git 资源
🍱	res 资源
🔧	git 配置
🔧	conf 配置
🙈	git ignore
🙈	gitignore ignore
⚡️	git 性能
🔥	git 删除
🔥	remove 删除
🐛	git bug
✨	git 特性
✨	feat 特性
♻️	git 重构
🏗️	git 架构
🔖	git 标记
🔖	tag 标记
📦️	git 备份
📦️	bak 备份
💄️	git 美化
💄️	ui 美化
🚚	git 移动
🚚	move 移动
```

## 参考资料

- [鼠须管输入法配置 – 哈呜.王](https://www.hawu.me/others/2666)
- [rime 定制指南 - 知乎](https://zhuanlan.zhihu.com/p/91129641)
- [Rime 输入法多平台新手设置参考 - 知乎](https://zhuanlan.zhihu.com/p/695780532)
- [如何从头开始编一个拼音输入法？ - 知乎](https://www.zhihu.com/question/20720365/answer/16428172)
- [Rime 安装说明 - SivanLaai's Blog](https://blog.laais.cn/posts/projects/rime/installation/)
