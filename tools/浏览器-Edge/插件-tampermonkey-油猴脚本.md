---
title: 油猴脚本
tags:
created_time: 2024-10-19
---

## Intro 介绍

### 第一个简单的版本

缺点是有可能会不小心改变内容

```js
// ==UserScript==
// @name         CSDN免登录复制
// @version      2024-10-19
// @description  try to take over the world!
// @author       JackyLee
// @match        https://blog.csdn.net/*/article/details/*
// @icon         https://g.csdnimg.cn/static/logo/favicon32.ico
// @grant        none
// ==/UserScript==

(function() {
    'use strict';
    let codes = document.querySelectorAll("code");
    //遍历循环代码块
    codes.forEach(c=>{
        //代码块可编辑
        c.contentEditable = "true";
    });
    #content_views > pre:nth-child(7)
})();
```

## Ref 参考文献

- [手写油猴脚本，几分钟学会新技能\_哔哩哔哩\_bilibili](https://www.bilibili.com/video/BV1yT411L7n7/?spm_id_from=333.337.search-card.all.click&vd_source=ffe13c57aa3e9ee91266df09d77a3e35)
- [CSDN 免登录复制 - 源代码](https://greasyfork.org/zh-CN/scripts/411919-csdn%E5%85%8D%E7%99%BB%E5%BD%95%E5%A4%8D%E5%88%B6/code#google_vignette)
- [有哪些超神的油猴脚本？ - 知乎](https://www.zhihu.com/question/22210090/answer/1147889178)
- [有哪些超神的油猴脚本？ - 知乎](https://www.zhihu.com/question/22210090/answer/25508124551)
