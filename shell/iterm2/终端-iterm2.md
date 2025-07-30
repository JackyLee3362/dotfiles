---
type: basic-note
title: 终端-iterm2
created_time: 2025-07-10
modified_time: 
tags:
description:
---

```json
    "Triggers" : [
    {
      "disabled" : false,
      "action" : "HighlightTrigger",
      "parameter" : "{p3#2b2bbabac5c5,}",
      "regex" : "(?:\\s)((com|org)[a-zA-Z\\.]+)(?:\\s)",
      "partial" : true
    },
    {
      "disabled" : false,
      "action" : "HighlightTrigger",
      "parameter" : "{p3#ababb2b2bfbf,}",
      "regex" : "\\[?TRACE\\]?",
      "partial" : true
    },
    {
      "disabled" : false,
      "partial" : true,
      "parameter" : "{p3#808080808080,}",
      "regex" : "\\[?DEBUG\\]?",
      "action" : "iTermHighlightLineTrigger"
    },
    {
      "action" : "HighlightTrigger",
      "disabled" : false,
      "parameter" : "{p3#8989caca7979,}",
      "regex" : "\\[?INFO\\]?",
      "partial" : true
    },
    {
      "action" : "HighlightTrigger",
      "disabled" : false,
      "parameter" : "{p3#e5e5c0c07b7b,}",
      "regex" : "\\[?(WARNING|WARN)\\]?",
      "partial" : true
    },
    {
      "action" : "HighlightTrigger",
      "disabled" : false,
      "parameter" : "{p3#efef59596e6e,}",
      "regex" : "\\[?ERROR\\]?",
      "partial" : true
    },
    {
      "action" : "iTermHighlightLineTrigger",
      "disabled" : false,
      "parameter" : "{,p3#1e1e0a0a3636}",
      "regex" : "\\[?(WARNING|WARN)\\]?",
      "partial" : true
    },
    {
      "action" : "iTermHighlightLineTrigger",
      "disabled" : false,
      "parameter" : "{,p3#34340a0a0c0c}",
      "regex" : "\\[?ERROR\\]?",
      "partial" : true
    },
    {
      "action" : "HighlightTrigger",
      "disabled" : true,
      "parameter" : "{p3#8989caca7979,}",
      "regex" : "^([\\s\\d\\.\\-:]+)",
      "partial" : true
    },
    {
      "action" : "HighlightTrigger",
      "disabled" : false,
      "parameter" : "{p3#d4d45f5fdede,}",
      "regex" : "(?:\\s)(\\d+)(?:\\s)",
      "partial" : true
    }
  ],
```

## 参考资料
