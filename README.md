# TestHttpdServer

## ローカル環境構築

あらかじめ Docker をインストールしておき、以下を実行する。

```bash
docker build -t test-httpd-server-image .
docker container run --name test-httpd-server --rm -d -p 8080:80 test-httpd-server-image
```

## 疎通確認

- http://localhost:8080/
  - htdocs/index.html が表示。
- http://localhost:8080/userinfo/userinfo.php
  - htdocs/userinfo/userinfo.php の実行結果が表示。

## ローカル環境削除

```bash
docker container stop test-httpd-server
docker image rm test-httpd-server-image
```

## 参考資料

- [【超初心者】Docker を使用して自作 Web サイトを表示してみた](https://qiita.com/sugurutakahashi12345/items/dc23dab2613b0e6103e8)
- [Docker の httpd イメージで Web サーバーを立てる（PHP も動かすよ！）](https://qiita.com/BiwaYamada/items/9b7b6b359cc6ed2d1e8b)
