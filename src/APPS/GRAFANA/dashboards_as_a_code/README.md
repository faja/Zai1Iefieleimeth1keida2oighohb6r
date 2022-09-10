# getting started
- install `jsonnet` and `jb`
    ```
    go install github.com/google/go-jsonnet/cmd/jsonnet@latest
    go install github.com/jsonnet-bundler/jsonnet-bundler/cmd/jb@latest
    ```

- create and init project dir
    ```
    mkdir myawesomedashboards && cd myawesomedashboards
    jb init
    jb install https://github.com/grafana/grafonnet-lib/grafonnet
    ```

- create and compile your first dashboard
    ```
    cat > dashboard.jsonnet <<EOT
    local grafana = import 'grafonnet/grafana.libsonnet';

    local dashboard = grafana.dashboard;

    dashboard.new(
      'Emoji Popularity',
      tags=['emojivoto'],
      timezone='utc',
      schemaVersion=16,
      time_from='now-1h',
    )
    EOT

    jsonnet -J vendor -o dashboard.json dashboard.jsonnet
    ```

- import json dashboard to grafana, how? it's up to you, but terraform is a good choice

# next steps
- [01. local development environment](./01.local.dev.env.md)

# links
- https://github.com/grafana/grafonnet-lib
- https://grafana.github.io/grafonnet-lib/
- https://github.com/google/go-jsonnet
- https://github.com/jsonnet-bundler/jsonnet-bundler
