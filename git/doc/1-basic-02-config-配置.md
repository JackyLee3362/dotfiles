# git：版本管理工具

[Learn Git Branching](https://learngitbranching.js.org/?locale=zh_CN)

## `config`：配置

```sh
# 查看配置
git config --list
# 设置全局用户名+邮箱
git config --global user.name "Jackylee"
git config --global user.email jieli.work@qq.com
# 配置文件在哪呢
# windows: ~/.gitconfig
# linux: /etc/gitconfig
# 具体项目的配置
git config --local 配置内容
# 设置代理
git config --global http.proxy 'http://localhost:7890'
```


