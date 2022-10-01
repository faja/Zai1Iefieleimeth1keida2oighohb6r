- copy paste example
```
local panelLogs = {
  // type, title and description
  "type": "logs",
  "title": "",
  "description": "...",

  // datasource
  "datasource": {
    "type": "loki",
    "uid": "${LOKI_DS}"
  },

  // targets
  "targets": [
    {
      "expr": "{app=\"${job}\"}"
    }
  ],

  // options
  "options": {
  }
};
```
