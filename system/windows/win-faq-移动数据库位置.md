# 更改数据库的位置

[原文](https://blog.csdn.net/weixin_47455594/article/details/125708515)

第一步 查找数据库存数位置

```sql
show global variables like "%datadir%";
```

第二步 停止 mysql 服务，然后启动

```shell
net stop mysql80
net start mysql80
```
