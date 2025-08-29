---
type: basic-note
title: pom
author: JackyLee
create_date: 2025-08-27
update_date:
tags:
description:
---

## 父标签写法

```xml
<parent>
    <groupId></groupId>
    <artifactId></artifactId>
    <version></version>
</parent>
```

常见的 spring-parent

spring 2.x 支持 Java8 最新为 2.7.18

```xml
<parent>
    <groupId>org.springframework.boot</groupId>
    <artifactId>spring-boot-starter-parent</artifactId>
    <version>2.7.18</version>
    <!--<relativePath/> -->
</parent>
```

## 测试

groovy，这是 1.x 版本的最新版本，更新于 2019-05-05

```xml
<!-- https://mvnrepository.com/artifact/org.spockframework/spock-core -->
<dependency>
    <groupId>org.spockframework</groupId>
    <artifactId>spock-core</artifactId>
    <version>1.3-groovy-2.5</version>
    <scope>test</scope>
</dependency>
<!-- 集成 spring -->
<dependency>
    <groupId>org.spockframework</groupId>
    <artifactId>spock-spring</artifactId>
    <version>${spock.version}</version>
    <scope>test</scope>
</dependency>
```

junit4

junit5

spring-test

```xml
<dependency>
    <groupId>org.springframework</groupId>
    <artifactId>spring-test</artifactId>
    <version>5.3.8</version>
    <scope>test</scope>
</dependency>
```

## 日志

logback

slf4j

## 序列化

jackson

fastjson

```xml
<dependency>
    <groupId>com.alibaba</groupId>
    <artifactId>fastjson</artifactId>
    <version>1.2.83</version>
</dependency>
```

## 参考资料

- [01. 单元测试学习与项目介绍 - 学城](https://km.sankuai.com/page/327757205)