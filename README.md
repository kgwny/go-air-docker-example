# go-air-docker-example

## air とは

Go の開発で Live Reload を実現するツール
https://github.com/air-verse/air

## air の使い方

### air のインストール
```
go install github.com/air-verse/air@latest
```

### air init コマンドによる初期化
```
air init
```

.air.toml ファイルが出来上がる
```
air init

  __    _   ___
 / /\  | | | |_)
/_/--\ |_| |_| \_ v1.62.0, built with Go go1.24.3

.air.toml file created to the current directory with the default settings
```

### air コマンドによる実行
```
air -c .air.toml
```

Hello, World! が出力される
```
❯ air -c .air.toml

  __    _   ___
 / /\  | | | |_)
/_/--\ |_| |_| \_ v1.62.0, built with Go go1.24.3

mkdir /Users/・・・/go-air-docker-example/tmp
watching .
!exclude tmp
building...
running...
Hello, World!
```

## air + Dockerfile + docker-compose.yml によるライブリロード
```
docker-compose up --build
```

```
Attaching to server-1
server-1  |
server-1  |   __    _   ___
server-1  |  / /\  | | | |_)
server-1  | /_/--\ |_| |_| \_ v1.62.0, built with Go go1.24.3
server-1  |
server-1  | watching .
server-1  | !exclude tmp
server-1  | building...
server-1  | running...
server-1  | Hello, World!
```

air 起動後に main.go を修正すると、ビルドして再実行される
```
server-1  | main.go has changed
server-1  | building...
server-1  | running...
server-1  | Hello, World! (^^)
```
