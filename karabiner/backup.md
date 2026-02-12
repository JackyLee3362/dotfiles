---
type: basic-note
title: backup
author: JackyLee
create_time: 2026-02-12
update_time:
tags:
description:
---

废弃的 delete_forward

```json
    {
      "conditions": [
        {
          "name": "caps_arrow_mode",
          "type": "variable_if",
          "value": 1
        }
      ],
      "from": {
        "key_code": "s",
        "modifiers": {
          "optional": ["any"]
        }
      },
      "to": [
        {
          "key_code": "delete_forward"
        }
      ],
      "type": "basic"
    },
```

## 参考资料
