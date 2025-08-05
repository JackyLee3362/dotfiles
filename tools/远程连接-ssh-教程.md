# ssh

生成ssh公钥私钥

```sh
在用户目录下输入，然后一路回车
ssh-keygen 
```

[Generating a new SSH key and adding it to the ssh-agent - GitHub Docs](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)

将公钥添加到Github

[Adding a new SSH key to your GitHub account - GitHub Docs](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account)

测试ssh连接

```sh
ssh -T git@github.com
```

[Testing your SSH connection - GitHub Docs](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/testing-your-ssh-connection)

## 参考资料

- [两步教你用 ssh 连接 Termux，在电脑上便捷使用 termux。 - 知乎](https://zhuanlan.zhihu.com/p/550073316)
- [SSH开启（win10） - 知乎](https://zhuanlan.zhihu.com/p/391373172)
- [适用于 Windows 的 OpenSSH 入门 | Microsoft Learn](https://learn.microsoft.com/zh-cn/windows-server/administration/openssh/openssh_install_firstuse)