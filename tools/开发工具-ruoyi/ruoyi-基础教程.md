---
tags:
  - ruoyi/教程
created_time: 2024-10-07
---

## 介绍

若依 ruoyi-vue 是非常棒的国产软件，首先启动 redis


```cmd
// windows
.\redis-server.exe .\redis.windows.conf
```

然后启动后端服务

idea 中启动，如果是远程服务器需要另外搞

## 黑马教程（笔记）

- [2024-Java若依框架专题课_免费高速下载|百度网盘-分享无限制](https://pan.baidu.com/s/1ye_pq_rQVKpLLhOT9DzB8w&pwd=9785#list/path=%2F)➕2024-10-09 20:49:48

### 设置 course 表格 

```sql
SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;


DROP TABLE IF EXISTS `tb_course`;
CREATE TABLE `tb_course`  (

  `id` int NOT NULL AUTO_INCREMENT COMMENT '课程id',
  `code` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '课程编码',
  `subject` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '课程学科',
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '课程名称',
  `price` int NULL DEFAULT NULL COMMENT '价格（元）',
  `applicate_people` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '适用人群',
  `info` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '课程介绍',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

	SET FOREIGN_KEY_CHECKS = 1;
```

## 前端登录

账号 `admin` 密码 `admin123`

### 开启注册开关需要去源码中更改

### 构建表单需要从黑马教程里添加

### 前后端交互流程

![image](https://assets-1302294329.cos.ap-shanghai.myqcloud.com/2024/md/mdfront-back.png)


