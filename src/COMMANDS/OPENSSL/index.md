# 

```
openssl x509 -in c2.crt -noout -text                    # get info about certificate
echo -n | openssl s_client -connect node_address:443    # fetch certificate from remote host
```
