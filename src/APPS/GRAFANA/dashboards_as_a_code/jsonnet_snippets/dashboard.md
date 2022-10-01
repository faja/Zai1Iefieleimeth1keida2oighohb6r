```
local grafana = import 'grafonnet/grafana.libsonnet';

// dashboard
grafana.dashboard.new(
  'Prometheus',           // dashboard name
  timezone='utc',
  time_from='now-1h',
  editable=true,
)
```
