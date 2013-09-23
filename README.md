Practice
========

```
$ carton exec -- plackup -Ilib app.psgi -r
```

```
$ curl -s -X POST \
-H 'Content-Type: application/json' \
-d '{"jsonrpc":"2.0","id":1,"method":"findByCity","params":{"city":"渋谷区"}}' \
localhost:5000/jsonrpc
```

