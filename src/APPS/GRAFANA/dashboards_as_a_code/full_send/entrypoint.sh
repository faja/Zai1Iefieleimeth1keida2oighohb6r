#!/bin/bash -

export JSONNET_PATH=${JSONNET_PATH:-/go/vendor}
export DASHBOARDS_PATH=${DASHBOARDS_PATH:-/src/dashboards}
export DASHBOARDS_RENDERED_PATH=${DASHBOARDS_RENDERED_PATH:-/src/dashboards_rendered}
export TERRAFORM_PATH=${TERRAFORM_PATH:-/src/terraform}

render() {
    cd ${DASHBOARDS_PATH}
    echo executing: render function \(jsonnet\)
    for file in *.jsonnet
    do
        echo rendering: $file
        jsonnet -J ${JSONNET_PATH} -o ${DASHBOARDS_RENDERED_PATH}/${file%.*}.json ${file}
    done
}

tf-init() {
    cd ${TERRAFORM_PATH}
    echo executin: terraform init
    terraform init
}

tf-apply() {
    cd ${TERRAFORM_PATH}
    echo executin: terraform apply
    terraform apply -auto-approve
}

export -f render
export -f tf-init
export -f tf-apply

main() {
    case ${1} in
        watch)
            reflex -r dashboards/.*\.jsonnet$ -- bash -c 'render && tf-init && tf-apply'
        ;;

        *)
        echo command not supported
        echo supported commands: watch
        ;;
    esac
}

main "$@"
