# TextTool

## 環境
* Ruby

## 内容
* Rubyでテキスト処理

* Excelを使用する際には```gem install spreadsheet```コマンドを実行する

* seleniumつかってみた

* loggerの使い方

* もっとも簡単なテスト

* ミニマム化ツール作ってみた(cssで動確済み)

* YAMLファイル読み込みの方法

* RSpecでテストコード書いてみた

## Rspec
* ```bundle init```コマンドでGemfileを初期化(作成)
* ```gem 'rspec'```を追記し、```bundle install```を実行。
* ```bundle exec rspec --init```コマンドでrspecを初期化。
* 生成されたspec_helper.rbの=begin=endを削除しコメントアウトを解除する。(初期化を行う)
* テストクラスでspec_helperクラスを読み込んで初期化を行う。
* ```rspec spec```コマンドでテストを実行する。
(bundle exec rspecコマンドではフォルダ階層が異なっているらしくテスト実行できなかった。)
