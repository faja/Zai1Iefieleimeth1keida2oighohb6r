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

RUN mkdir -p /src/terraform /src/dashboards /src/dashboards_rendered

COPY entrypoint.sh /entrypoint.sh

WORKDIR /src
ENTRYPOINT ["/entrypoint.sh"]
CMD ["watch"]
