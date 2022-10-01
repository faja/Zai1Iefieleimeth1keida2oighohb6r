```
// top row
.addPanels(
  [
    panelLocalVar1   { gridPos: {x: 0,  y: 0, w: 3, h: 5} },
    // more panels
  ]
)

// row: XXX
.addPanel(
  grafana.row.new(title='XXX', collapse=true)
  .addPanels(
    [
      panelLocalVar2 { gridPos: {x: 0,  y: 10, w: 8, h: 8} },
      // more panels
    ]
  ),
  gridPos={X: 0, y: 9, w: 24, h: 1},
)

// more rows...
```
