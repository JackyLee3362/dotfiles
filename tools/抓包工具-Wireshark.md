# wireshark cheatsheet

## 查看本地网络

```bash
ipconfig
```

## 混杂模式和普通模式的区别

如何开启：菜单栏 -> 捕获 -> 选项 -> 在所有接口上使用混杂模式

- 混杂模式：不管mac地址是不是发送到本机，都显示
- 普通模式：只抓发送到本机的包

## wireshark 过滤器的使用

```python
tcp # 找到tcp协议的包（包括tcp，http等）
tcp.flags.ack == 0 # 找到建立连接的信息
tcp.flags.ack == 0 and tcp.flags.syn == 1 # 找到建立连接的信息
tcp.flags.fin == 1

ip.src_host == 192.168.1.109 or ip.dst_host == 192.168.1.1
ip.addr == 192.168.1.1

```


