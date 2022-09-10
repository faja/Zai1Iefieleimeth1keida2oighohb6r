terraform {
  required_version = "~> 1.2.0"
  required_providers {
    grafana = {
      source = "grafana/grafana"
      version = "1.28.1"
    }
  }
}

provider "grafana" {
  url = "http://grafana:3000"
  auth = "admin:admin"
}

resource "grafana_folder" "xyzzy" {
  title = "Xyzzy"
}

resource "grafana_dashboard" "xyzzy" {
  for_each = {
    for dashboard in fileset(path.module, "../dashboards_rendered/*.json") : dashboard => true
  }

  folder      = grafana_folder.xyzzy.id
  config_json = file(each.key)
}
