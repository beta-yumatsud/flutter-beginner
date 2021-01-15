## 構築メモ
* Macで実施
* 基本的には [公式ドキュメント](https://flutter.dev/docs/get-started/install/macos)通りにやればOK
* ハマったポイント
  * `flutter --version` を実行すると `dartの発行元がどうたらこうたらで実行できん` 的なことを言われるが、下記で解決
  ```
  $ sudo spctl --master-disable
  ```
  * `flutter doctor` を実行すると `idevice_idの発行元がどうたらこうたらで実行できん` 的なことを言われるが、下記で解決
  ```
  $ sudo xattr -d com.apple.quarantine /PATH_TO_YOUR_FLUTTER_HOME/bin/cache/artifacts/libimobiledevice/idevice_id
  ```
