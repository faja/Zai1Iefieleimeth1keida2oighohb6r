```
### dev server
vault server -dev
export VAULT_ADDR='http://127.0.0.1:8200'
export VAULT_TOKEN="..."

### kv basics
vault kv list secret/
vault kv get -mount=secret config
vault kv put -mount=secret config KEY1=VALUE1 KEY2=VALUE2
vault kv put -mount=secret config @data.json

### policies
vault

### tokens
```
