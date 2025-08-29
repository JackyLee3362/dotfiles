---
type: basic-note
title: zsh
create_date: 2024-02-02
update_date:
tags:
description:
---

[Zsh 官网](https://www.zsh.org/)

## Zsh 的安装

```shell
# ubuntu系统
sudo apt install zsh
# 更改shell
chsh -s /bin/zsh
```

### 新手配置

重新运行新手设置

```sh
autoload -Uz zsh-newuser-install; zsh-newuser-install -f
```

### 主题配置

主题使用 `powerlevel10k`

- [romkatv/powerlevel10k: A Zsh theme](https://github.com/romkatv/powerlevel10k?tab=readme-ov-file#oh-my-zsh)

该主题配置 anaconda

- [解决 oh-my-zsh 主题 powerlevel10k 不显示 conda 虚拟环境名字\_解决 oh-my-zsh 主题 powerlevel10k 不显示 conda-CSDN 博客](https://blog.csdn.net/qq_44640931/article/details/130353515)

## 常用的 shell 命令

```sh
echo hello
cat /etc/shells
```

## 参考资料

- [为什么说 zsh 是 shell 中的极品？ - 知乎](https://www.zhihu.com/question/21418449/answer/300879747)
- [Mac 上快速安装 oh-my-zsh | 小决的专栏](https://jueee.github.io/2022/08/2022-08-01-Mac%E4%B8%8A%E5%BF%AB%E9%80%9F%E5%AE%89%E8%A3%85oh-my-zsh/)
