---
tags: 
create_date: 2024-10-19
---

### 若依框架修改器

- [RuoYi-MT: 若依框架修改器，可以一键修改包名、项目名、关键字等，避免手动修改出错](https://gitee.com/lpf_project/RuoYi-MT)➕2024-10-09 20:28:07

### 新建业务模块

在后端新建业务

比如新建 `sky-merchant` 子模块，需要遵循以下步骤

1.  新建子模块
2. 父工程版本锁定
3. `sky-admin` 添加依赖

## 页面调整

页面标题调整，在 `.env.development` 中设置
页面 `Logo` 调整，在 `/logo` 文件夹下
图标管理，阿里巴巴矢量素材库 + `/icon` 文件夹下放入 svg 文件
登录标题 login.vue 中有个 title 设置
背景设置，在 /image 文件夹下放入图片，login.vue 中有个 css 设置，设置 background-image

## Ref 参考文献