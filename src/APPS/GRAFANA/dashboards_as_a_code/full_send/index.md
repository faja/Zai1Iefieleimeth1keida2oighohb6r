# full send example

## general idea

- we do have a docker compose file containing two services:
  - `grafana`
  - `jsonnet` - here we will render the dashboards and execute terraform to apply them against grafana instance

- `jsonnet` service heve two volumes mounted:
  - `terraform:/src/terraform` - containing terraform code to apply dashboards
  - `dashboards:/src/dashboards` - containing our jsonnet dashboards

- `jsonnet` service entrypoint is `reflex` process, that listens on changes made to `/src/terraform` and `/src/dashboards` and executes:
  - `jsonnet` command to render dashboards `jsonnet` -> `json`
  - `terraform init && terraform apply` to apply changes

## how it works
- we edit jsonnet file in `dashboards` directory
- `reflex` running in `jsonnet` container notices the change and executes `jsonnet` binary to render the dashboard
- once dashboard is rendered to `json` (into `/src/dashboards_rendered`) it executes `terraform`
- that's it

## how to play with it
- start docker compose
```
docker compose up --build --remove-orphans --exit-code-from grafana grafana jsonnet

```
- edit jsonnet dashboards

## all the files:
- [compose.yaml](./compose.yaml)
```
{{#include compose.yaml}}
```

- [Dockerfile](./Dockerfile)
```
{{#include Dockerfile}}
```

- [entrypoint.sh](./entrypoint.sh)
```
{{#include entrypoint.sh}}
```

- [grafana.ini](./grafana.ini)
```
{{#include grafana.ini}}
```

- [terraform/main.tf](./terraform/main.tf)
```
{{#include terraform/main.tf}}
```
