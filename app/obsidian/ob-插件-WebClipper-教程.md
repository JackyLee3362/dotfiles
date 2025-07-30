官方插件，设置如下

```json
{
  "general_settings": {
    "betaFeatures": false,
    "legacyMode": false,
    "showMoreActionsButton": false,
    "silentOpen": false
  },
  "highlighter_settings": {
    "alwaysShowHighlights": true,
    "highlightBehavior": "highlight-inline",
    "highlighterEnabled": true
  },
  "interpreter_settings": {
    "defaultPromptContext": "",
    "interpreterAutoRun": false,
    "interpreterEnabled": false,
    "interpreterModel": "gpt-4o-mini",
    "models": [],
    "providers": []
  },
  "property_types": [
    {
      "defaultValue": "{{title}}",
      "name": "title",
      "type": "text"
    },
    {
      "defaultValue": "{{url}}",
      "name": "source",
      "type": "text"
    },
    {
      "defaultValue": "{{author|split:\", \"|wikilink|join}}",
      "name": "author",
      "type": "multitext"
    },
    {
      "defaultValue": "{{published}}",
      "name": "published",
      "type": "date"
    },
    {
      "defaultValue": "{{date}}",
      "name": "created",
      "type": "date"
    },
    {
      "defaultValue": "{{description}}",
      "name": "description",
      "type": "text"
    },
    {
      "defaultValue": "clippings",
      "name": "tags",
      "type": "multitext"
    },
    {
      "name": "star",
      "type": "text"
    },
    {
      "name": "question",
      "type": "text"
    }
  ],
  "stats": {
    "addToObsidian": 16,
    "copyToClipboard": 0,
    "saveFile": 0,
    "share": 0
  },
  "template_17367118130810vw0vlzrh": {
    "id": "17367118130810vw0vlzrh",
    "name": "默认",
    "behavior": "create",
    "noteNameFormat": "{{title}}",
    "path": "web",
    "noteContentFormat": "{{content}}",
    "context": "",
    "properties": [
      {
        "id": "1736711813081pcj1jci60",
        "name": "title",
        "value": "{{title}}",
        "type": "text"
      },
      {
        "id": "1736711813081qzirwtakk",
        "name": "source",
        "value": "{{url}}",
        "type": "text"
      },
      {
        "id": "17367118130810yp54oppx",
        "name": "author",
        "value": "{{author|split:\\\", \\\"|wikilink|join}}",
        "type": "multitext"
      },
      {
        "id": "17367118130810fmw00ynp",
        "name": "published",
        "value": "{{published}}",
        "type": "date"
      },
      {
        "id": "17367118130815ek2tgn6o",
        "name": "created",
        "value": "{{date}}",
        "type": "date"
      },
      {
        "id": "173671181308168gy4eqgr",
        "name": "description",
        "value": "{{description}}",
        "type": "text"
      },
      {
        "id": "1736711813081kahupgn4j",
        "name": "tags",
        "value": "web",
        "type": "multitext"
      }
    ],
    "triggers": [],
    "vault": "ob-note"
  },
  "template_1736832589396ghf823yua": {
    "id": "1736832589396ghf823yua",
    "name": "知乎",
    "behavior": "create",
    "noteNameFormat": "{{title}}",
    "path": "web/zhihu",
    "noteContentFormat": "{{content}}",
    "context": "",
    "properties": [
      {
        "id": "1736711813081pcj1jci60",
        "name": "title",
        "value": "{{title}}",
        "type": "text"
      },
      {
        "id": "1736860597061noog96sd3",
        "name": "question",
        "value": "{{title}}",
        "type": "text"
      },
      {
        "id": "1736711813081qzirwtakk",
        "name": "source",
        "value": "{{url}}",
        "type": "text"
      },
      {
        "id": "17367118130810yp54oppx",
        "name": "author",
        "value": "{{author|split:\\\", \\\"|wikilink|join}}",
        "type": "multitext"
      },
      {
        "id": "17367118130810fmw00ynp",
        "name": "published",
        "value": "{{published}}",
        "type": "date"
      },
      {
        "id": "17367118130815ek2tgn6o",
        "name": "created",
        "value": "{{date}}",
        "type": "date"
      },
      {
        "id": "173671181308168gy4eqgr",
        "name": "description",
        "value": "{{description}}",
        "type": "text"
      },
      {
        "id": "1736711813081kahupgn4j",
        "name": "tags",
        "value": "web/zhihu",
        "type": "multitext"
      },
      {
        "id": "1736849108423ijy5cdx8h",
        "name": "star",
        "value": "0",
        "type": "text"
      }
    ],
    "triggers": [
      "https://www.zhihu.com",
      "https://zhihu.com"
    ],
    "vault": "ob-note"
  },
  "template_1736834122491yylyomk4b": {
    "id": "1736834122491yylyomk4b",
    "name": "Github",
    "behavior": "create",
    "noteNameFormat": "{{title}}",
    "path": "web/zhihu",
    "noteContentFormat": "{{content}}",
    "context": "",
    "properties": [
      {
        "id": "1736711813081pcj1jci60",
        "name": "title",
        "value": "{{title}}",
        "type": "text"
      },
      {
        "id": "1736711813081qzirwtakk",
        "name": "source",
        "value": "{{url}}",
        "type": "text"
      },
      {
        "id": "17367118130810yp54oppx",
        "name": "author",
        "value": "{{author|split:\\\", \\\"|wikilink|join}}",
        "type": "multitext"
      },
      {
        "id": "17367118130810fmw00ynp",
        "name": "published",
        "value": "{{published}}",
        "type": "date"
      },
      {
        "id": "17367118130815ek2tgn6o",
        "name": "created",
        "value": "{{date}}",
        "type": "date"
      },
      {
        "id": "173671181308168gy4eqgr",
        "name": "description",
        "value": "{{description}}",
        "type": "text"
      },
      {
        "id": "1736711813081kahupgn4j",
        "name": "tags",
        "value": "web/zhihu",
        "type": "multitext"
      },
      {
        "id": "1736849127038avda1q8dp",
        "name": "star",
        "value": "0",
        "type": "text"
      }
    ],
    "triggers": [
      "https://github.com"
    ],
    "vault": "ob-note"
  },
  "template_list": [
    "1736834122491yylyomk4b",
    "1736832589396ghf823yua",
    "17367118130810vw0vlzrh"
  ],
  "vaults": [
    "ob-note"
  ]
}
```