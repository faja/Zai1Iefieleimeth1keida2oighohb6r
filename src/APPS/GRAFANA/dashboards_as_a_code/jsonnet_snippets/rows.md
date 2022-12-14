- collapsed
```
.addPanel(
  grafana.row.new(title='XXX', collapse=true)
  .addPanels(
    [
      panelLocalVar2 { gridPos: {x: 0,  y: 10, w: 8, h: 8} },
    ]
  ),
  gridPos={x: 0, y: 9, w: 24, h: 1},
)
```

- NONcollapsed
```
.addPanels(
    [
        grafana.row.new(title='Overview', collapse=false) { gridPos: {x: 0, y: 2, w: 24, h: 1} },
        panelMemoryUsage { gridPos: {x: 0, y: 3, w: 24, h: 8} },
    ]
)
```

- NONcollapsed, repeatable rows
```
.addPanels(
    [
        grafana.row.new(title='Task: ${task}', repeat='task', collapse=false) { gridPos: {x: 0, y: 2, w: 24, h: 1} },
        panelMemoryUsage { gridPos: {x: 0, y: 3, w: 24, h: 8} },
    ]
)
```
