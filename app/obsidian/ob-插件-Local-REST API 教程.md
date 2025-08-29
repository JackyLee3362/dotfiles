---
title: Obsidian 插件 - Local Rest API
tags:
  - obsidian/插件
create_date: 2024-10-17
---
## Intro 介绍

添加三个常用的 Template

### 添加到每日笔记

```http
POST /periodic/daily/ HTTP/1.1

[^{{date "H:m"}}]: [{{page.title}}]({{page.url}}) 
```

### 创建快照

```http
PUT /vault/project/{{filename page.title}}.md HTTP/1.1

---
page-title: {{json page.title}}
url: {{page.url}}
create_date: "{{date}}"
tags:
summary:
status: todo
priority: 0
summary: {{json page.title}}
---
{{#if page.selectedText}}

{{quote page.selectedText}}

---

{{/if}}{{page.content}}
```

## Ref 参考文献

- [Local Rest API for Obsidian: Interactive API Documentation](https://coddingtonbear.github.io/obsidian-local-rest-api/)➕2024-10-18 00:43:18