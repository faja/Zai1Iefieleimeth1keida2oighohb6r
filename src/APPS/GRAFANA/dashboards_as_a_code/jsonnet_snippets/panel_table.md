- copy paste example
```
local panelScrapingMostSamplesTop5 = {
  // type, title and description
  "type": "table",
  "title": "Most samples top5",
  "description": "Which job produces the biggest number of samples.\n\nIf a job has multiple instances, only one is displayed, the one with biggest number (by using `max by (job)`.",

  // datasource
  "datasource": {
    "type": "prometheus",
    "uid": "${PROMETHEUS_DS}"
  },

  // targets
  "targets": [
    {
      "expr": "topk(5,\n  max by (job) (scrape_samples_scraped)\n)",
      "format": "table",
      "instant": true,
    }
  ],

  // transformations
  "transformations": [
    {
      "id": "organize",
      "options": {
        "excludeByName": {
          "Time": true
        }
      }
    }
  ],

  // options
  "options": {
    "sortBy": [
      {
        "desc": true,
        "displayName": "Value"
      }
    ]
  },

  // filedConfig
  "fieldConfig": {
  }
};
```
