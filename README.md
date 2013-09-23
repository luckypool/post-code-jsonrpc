Practice
========

```
$ carton exec -- plackup -Ilib app.psgi -r
```

```
$ curl -s -X POST \
-H 'Content-Type: application/json' \
-d '{"jsonrpc":"2.0","id":1,"method":"findByCity","params":{"city":"渋谷区","town":"東"}}' \
localhost:5000/jsonrpc
```


```
$ curl -s -X POST \
-H 'Content-Type: application/json' \
-d '{"jsonrpc":"2.0","id":1,"method":"findByZipcode","params":{"zipcode":"1500011"}}' \
localhost:5000/jsonrpc
```

```json
{
  "jsonrpc": "2.0",
  "id": 1,
  "result": [
    {
      "id": "39292",
      "cityKana": "シブヤク",
      "jiscode": "13113",
      "pref": "東京都",
      "town": "東",
      "zipcode": "1500011",
      "townKana": "ヒガシ",
      "prefKana": "トウキョウト",
      "city": "渋谷区"
    }
  ]
}
```
