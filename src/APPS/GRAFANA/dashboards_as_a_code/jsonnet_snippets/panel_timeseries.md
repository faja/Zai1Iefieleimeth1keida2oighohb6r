- time series in not supported by grafonnet yet, hence we have to use pure json :(
```
.addPanel(
    {
        "datasource": {
            "type": "prometheus",
            "uid": "${PROMETHEUS_DS}"
        },
        "fieldConfig": {
            "defaults": {
                "color": {
                    "fixedColor": "light-green",
                    "mode": "fixed"
                },
                "custom": {
                    "axisLabel": "",
                    "axisPlacement": "auto",
                    "barAlignment": 0,
                    "drawStyle": "line",
                    "fillOpacity": 8,
                    "gradientMode": "none",
                    "hideFrom": {
                        "legend": false,
                        "tooltip": false,
                        "viz": false
                    },
                    "lineInterpolation": "linear",
                    "lineWidth": 1,
                    "pointSize": 5,
                    "scaleDistribution": {
                        "type": "linear"
                    },
                    "showPoints": "auto",
                    "spanNulls": false,
                    "stacking": {
                        "group": "A",
                        "mode": "none"
                    },
                    "thresholdsStyle": {
                        "mode": "off"
                    }
                },
                "decimals": 2,
                "mappings": [],
                "thresholds": {
                    "mode": "absolute",
                    "steps": [
                        {
                            "color": "green",
                            "value": null
                        }
                    ]
                },
                "unit": "reqps"
            },
            "overrides": []
        },
        "id": 5,
        "options": {
            "legend": {
                "calcs": [],
                "displayMode": "hidden",
                "placement": "bottom"
            },
            "tooltip": {
                "mode": "single",
                "sort": "none"
            }
        },
        "targets": [
            {
                "datasource": {
                    "type": "prometheus",
                    "uid": "${PROMETHEUS_DS}"
                },
                "editorMode": "code",
                "expr": "sum(rate(nginxplus_http_requests_total{job=\"${job}\"}[$__rate_interval]))",
                "hide": false,
                "legendFormat": "__auto",
                "range": true,
                "refId": "A"
            }
        ],
        "title": "Requests/s",
        "type": "timeseries"
    },
    gridPos={x: 0, y: 4, w: 12, h: 8}
)
```
