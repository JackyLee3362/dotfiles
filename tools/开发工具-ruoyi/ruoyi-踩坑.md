---
created_time: 2024-10-19
due_date: 
title: ruoyi 踩坑
---

## 设置 el-select

```html
<el-select
  v-model="queryParams.subject"
  placeholder="请选择课程学科"
  clearable
  style="width: 240px"
>

</el-select>
```

需要手动设置 style 的大小
