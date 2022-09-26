- datasource, eg: prometheus
```
.addTemplate(
  grafana.template.datasource(
    'PROMETHEUS_DS',     // name
    'prometheus',        // query
    'prometheus',        // current
    hide=true,           // ''      - disables hiding at all, everything is displayed
                         // 'label' - hide the name of the variable, and the drop down is displayed
                         // any other value - hides everything
    //regex='/prometheus/',
  )
)
```

- constant or custom text, eg: job name
```
.addTemplate(
  grafana.template.custom(
    'job',         // name
    'prometheus',  // query
    'prometheus',  // current
    hide=true,
  )
)
```