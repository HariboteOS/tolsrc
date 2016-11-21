# tolsrc
Source set of tools for developing Haribote OS .

## OSX 移植版
- このブランチは、Akkie氏によって移植された2007-02-21版のソースをベースに、最新のMac向けの修正を加えています。
- ベースとなったソースコードのパッケージは、以下のサイトから取得できます。
 - http://shrimp.marokun.net/osakkie/wiki/tolsetOSX/

## 修正点
### haritol
- マルチプラットフォームでの開発に対応するため、追加されました。
- OSごとに引数の形式が異なるコマンド(del/rm copy/cat)の肩代わりをします

## 判明している問題
### go_0023sのコンパイルにMac OSX上で失敗する
- gocc1などについては、配布されているコンパイル済みのバイナリをご利用ください。
