# Jacky's Config

## 配置文件命名

dotbot.conf.{环境}.{设备/操作系统}.conf.yaml

```sh
# 安装
pipx install dotbot==1.23.0

# 使用
dotbot -c install.conf.yaml

```

## Rime 操作

```sh
git submodule add https://github.com/iDvel/rime-ice
```

## 同步 Rime-ice

```sh
git submodule update --init --recursive
```

## 参考资料

- [dotbot: A tool that bootstraps your dotfiles ⚡️](https://github.com/anishathalye/dotbot)
