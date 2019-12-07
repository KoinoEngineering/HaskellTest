# HaskelTest
- Windows上でdocker環境で動かそうとしたが苦労したので、環境作ったときのことをただ書くだけのメモ

## Docker on Windows 10 Home with WSL
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