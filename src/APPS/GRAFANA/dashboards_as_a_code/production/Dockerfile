FROM golang:1.19-alpine

ARG JB_VERSION=latest
ARG JSONNET_VERSION=latest
ARG REFLEX_VERSION=latest

RUN apk update && \
    apk add \
      bash \
      git \
      terraform \
     && \
     go install github.com/google/go-jsonnet/cmd/jsonnet@${JSONNET_VERSION} && \
     go install github.com/jsonnet-bundler/jsonnet-bundler/cmd/jb@${JB_VERSION} && \
     go install github.com/cespare/reflex@${REFLEX_VERSION} && \
     jb init && \
     jb install https://github.com/grafana/grafonnet-lib/grafonnet

#RUN mkdir -p /src/terraform /src/dashboards_json /src/dashboards_jsonnet

##
#
ARG TERRAROFM_GRAFANA_PROVIDER_VERSION=1.28.2
RUN wget https://releases.hashicorp.com/terraform-provider-grafana/${TERRAROFM_GRAFANA_PROVIDER_VERSION}/terraform-provider-grafana_${TERRAROFM_GRAFANA_PROVIDER_VERSION}_linux_amd64.zip -O terraform-provider-grafana.zip && \
    mkdir -p /src/terraform/registry.terraform.io/grafana/grafana/${TERRAROFM_GRAFANA_PROVIDER_VERSION}/linux_amd64 && \
    unzip terraform-provider-grafana.zip -d /src/terraform/registry.terraform.io/grafana/grafana/${TERRAROFM_GRAFANA_PROVIDER_VERSION}/linux_amd64 && \
    rm -f terraform-provider-grafana.zip

COPY entrypoint.sh /entrypoint.sh

WORKDIR /src
ENTRYPOINT ["/entrypoint.sh"]
CMD ["watch"]
