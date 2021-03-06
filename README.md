# HaskelTest
ここの問題をボチボチ解いていく
- https://wiki.haskell.org/H-99:_Ninety-Nine_Haskell_Problems

## Docker on Windows 10 Home with WSL
- Windows上でdocker環境で動かそうとしたが苦労したので、環境作ったときのことをただ書くだけのメモ

### WSL2
動かしてみたがdockerデーモンが動かなかったのでWSL2を入れる  
- Windows Insider Program  
    現時点(2019/12/07)ではWSL2はプレビュービルドなので、 `Windows Insider Program` に登録する必要がある
    - 参考：https://www.softantenna.com/wp/windows/windows-10-insider-preview-build-18917/
    
    - 設定の画面から `Windows Insider Program` に登録する
    - Windows Updateを開いてプレビュービルドを取得する
    - 下記を参考にしてwsl2を使用可能にする
        - https://www.softantenna.com/wp/tips/windows-10-20h1-wsl-2/

### apt update
- いろいろupdate
    ```
    sudo apt update && sudo apt upgrade && sudo apt-get install update-manager-core
    ```

### install docker
- 初回
    ```
    sudo apt update
    sudo apt upgrade
    sudo apt install docker.io
    sudo cgroupfs-mount
    sudo usermod -aG docker $USER
    sudo service docker start
    ```
- 2回目以降
    ```
    sudo cgroupfs-mount && sudo service docker start
    ```
### install docker compose
- インストール
    ```
    sudo apt install docker-compose
    ```

### 動作確認
- compose起動
    ```
    docker-compose up -d
    ```
- haskellコンテナに入る
    ```
    docker-compose exec haskell ghci
    ```
- main.hs実行
    ```
    :l main
    main
    ```
- ghciを終わる
    ```
    :quit
    ```
- compose停止
    ```
    docker-compose down -v
    ```