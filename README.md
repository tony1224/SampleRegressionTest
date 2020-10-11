## About
- [ios-snapshot-test-case](https://github.com/uber/ios-snapshot-test-case)のスナップショット機能を用いて、コマンド入力で対象ViewControllerの画面サイズごとのスナップショットを出力する機能

## Usage
- `ios-snapshot-test-case` をパッケージ管理ツールを用いてインストール
    - 導入方法は[REDAMD.md](https://github.com/uber/ios-snapshot-test-case/blob/master/README.md)を参照
- 対象ViewControllerのTestファイルを作成
    - テストが成功することを確認
      - TODO: 実際のcode

- `scripts/snapshot.sh` を叩く

### scriptで聞かれる項目
#### SnapshotBaseViewControllerTestsでrecordMode = trueである必要があります。(y/N)：
- `ios-snapshot-test-case` の仕様で `recordMode` を trueにする必要があるため
- 設定を確認し問題が無ければyを入力

#### ViewController名：
- テストしたいViewController名を入力
- 設定クラス名の確認が出るので、問題無ければyを入力

#### 言語設定(a.日本, b.英語)：
- 撮影したい画面の言語をアルファベットで入力

これでテストが実行され、完了すると `SampleSnapshotTests/ReferenceImages_64/` 配下に画像が出力される

## Remarks
- `ios-snapshot-test-case` に依存する仕組みは将来的に取り除く予定
    - スナップショット機能のみの利用のため
