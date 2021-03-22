# 概要
- ティラノスクリプトでコードを書いていたところ、特定条件で、iPadでのみ進行不能になりました。
- 原因調査したところ、issuesに報告したほうがよさそうなので、まとめました。
- やりたいことは
  - 進行不能の解決 → 応急対応で解決しました。
  - 根本原因の解明 → わからず。 → issuesに報告すればわかるかも？
  - コードに問題があるかどうかの解明 → わからず。 → issuesに報告すればわかるかも？

# 詳細
- ティラノスクリプトは、いわゆるブラウザゲームも作ることができます。
- Windowsでコードを書いてテストしながら作成中、気がつくとiPadでのみ進行不能になっていることに気づきました。
- iPadのブラウザであれば、safari、chrome、Firefoxいずれも進行不能となりました。
- ひとまず進行不能を解決する方法は見つかりました。
  - `[button]`タグの表記方法を変更することで解決しました。`first.ks`を参照ください。
- さておき、根本的な原因がわからないこと、コードの問題が見つけられなかったこと、コードの内容からなんとなく、などの理由から、issuesに報告するのがよさそうと考えました。
- 進行不能となる最小のコードを調査しました。
- 最小にしきれていないかもしれません。また、エレガントではありません。再現性を優先したためです。


# DEMO
http://cat2151.github.io/tyranoscript5_for_iPad_browser_test_20210321/

## DEMOの使用方法

- DEMOページをブラウザで開いてください。
- `please_click` をタップまたはクリックしてください。
- 以下を確認してください。
  - Windows PCの場合、`please_click` をクリック後、OKが表示されること。
  - iPadのブラウザ（safariまたはchromeまたFirefox）の場合、`please_click` をクリック後、`OK`が表示されないこと。

# 補足

## コードはどこ？
- この2つです。
https://github.com/cat2151/tyranoscript5_for_iPad_browser_test_20210321/blob/main/data/scenario/first.ks
https://github.com/cat2151/tyranoscript5_for_iPad_browser_test_20210321/blob/main/data/scenario/second.ks

## 確認時のティラノスクリプトのバージョン
- `Ver507a（2021/3/10 更新）`です。

## 進行不能コードの作成方法
- 公式ページ https://tyrano.jp/dl/v5 から、`「ティラノスクリプト V5 」のスタンダードパッケージ` をダウンロードします。
- 同じく公式ページ https://tyrano.jp/studio から、 `ティラノスタジオ` をダウンロードします。
- ティラノスタジオの `resources/app/system_master/tyranoscript/` 配下に、`ティラノスクリプト V5` を上書きコピーします。
- ティラノスタジオで新規プロジェクトを作成します。
- プロジェクトの `data\scenario\` を空にし、当リポジトリの `first.ks` と `second.ks` を配置します。

## 再現環境
- 自分のiPadのみです。ほかの環境のiPadでの確認は取れていません。
- なので、環境依存トラブル、自分のiPadのなんらかの設定が原因、などの可能性も残っています。

