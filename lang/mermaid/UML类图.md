---
type: basic-note
title: UML类图
author: JackyLee
create_date: 2025-08-26
update_date:
tags:
description:
---

## 语法

```mermaid
classDiagram
classA --|> classB : 继承(Inheritance)
classC --* classD : 组合(Composition)
classE --o classF : 聚合(Aggregation)
classG --> classH : 关联(Association)
classI -- classJ : 链接(Link(Solid))
classK ..> classL : 依赖(Dependency)
classM ..|> classN : 实现(Realization)
classO .. classP : 链接(Link(Dashed))

```

## 参考资料
![alt text](assets/image.png)