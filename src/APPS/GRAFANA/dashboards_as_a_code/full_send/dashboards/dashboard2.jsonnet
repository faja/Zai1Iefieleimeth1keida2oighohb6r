local grafana = import 'grafonnet/grafana.libsonnet';

local dashboard = grafana.dashboard;

dashboard.new(
  'Dashboard 2',
  timezone='utc',
  schemaVersion=16,
  time_from='now-1h',
)
