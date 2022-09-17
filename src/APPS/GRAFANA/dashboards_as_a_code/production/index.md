# directory structure
```
mkdir -p dashboards/dashboards_json/Folder{1,2}
mkdir -p dashboards/dashboards_jsonnet/Folder{1,2}
mkdir -p dashboards/local_development
```

# files
- `compose.yaml`
```
{{#include compose.yaml}}
```

- `Dockerfile`
```
{{#include Dockerfile}}
```

- `entrypoint.sh`
```
{{#include entrypoint.sh}}
```

- `grafana.ini`
```
{{#include grafana.ini}}
```

- `main.tf`
```
{{#include main.tf}}
```

- `modules/grafana_dashboards/main.tf`
```
{{#include modules/grafana_dashboards/main.tf}}
```

# howto remote prometheus data source
```
DOCKER_BRIDGE_IP=$(docker network inspect bridge --format='{{range .IPAM.Config}}{{.Gateway}}{{end}}')
kubectl --context xyzzy --namespace monitoring port-forward --address=${DOCKER_BRIDGE_IP} service/prometheus-prometheus 9090:9090
```
