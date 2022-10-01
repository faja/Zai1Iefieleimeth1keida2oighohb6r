- copy paste example, text from lables
```
local panelVersion = {
  // type, title and description
  "type": "stat",
  "title": "Version",
  "description": "blabla",

  // datasource
  "datasource": {
    "type": "prometheus",
    "uid": "${PROMETHEUS_DS}"
  },

  // targets
  "targets": [
    {
      "expr": "prometheus_build_info{job=\"$job\"}",
      "instant": true,
      "legendFormat": "{{ version }}"
    }
  ],

  // filedConfig
  "fieldConfig": {
  },

  // options
  "options": {
    "textMode": "name",   // display text from label
    "colorMode": "none",  // disable color
    "graphMode": "none",  // disable graphing values (for instant query it does not matter)
    "reduceOptions": {
      "calcs": [
        "lastNotNull"
      ]
    }
  }
};
```

- copy paste example, single value latest, no graph
```
local panelRetention = {
  // type, title and description
  "type": "stat",
  "title": "Retention",
  "description": "blabla...",

  // datasource
  "datasource": {
    "type": "prometheus",
    "uid": "${PROMETHEUS_DS}"
  },

  // targets
  "targets": [
    {
      "expr": "time() - prometheus_tsdb_lowest_timestamp_seconds{job=\"$job\"}",
      "instant": true
    }
  ],

  // filedConfig
  "fieldConfig": {
    "defaults": {
      "unit": "s"
    }
  },

  // options
  "options": {
    "colorMode": "none",  // disable color
    "graphMode": "none",  // disable graphing
    "reduceOptions": {
      "calcs": [
        "lastNotNull"
      ]
    }
  }
};
```

- copy paste example, single value latest + graph
```
local panelStorageSize = {
  // type, title and description
  "type": "stat",
  "title": "Storage size",

  // datasource
  "datasource": {
    "type": "prometheus",
    "uid": "${PROMETHEUS_DS}"
  },

  // targets
  "targets": [
    {
      "expr": "prometheus_tsdb_storage_blocks_bytes{job=\"$job\"}"
    }
  ],

  // filedConfig
  "fieldConfig": {
    "defaults": {
      "color": {
        "fixedColor": "light-red",
        "mode": "fixed"
      },
      "unit": "bytes"
    }
  },

  // options
  "options": {
    "colorMode": "none",  // disable color
    "reduceOptions": {
      "calcs": [
        "lastNotNull"
      ]
    }
  }
};
```
