# tolsrc
Source set of tools for developing Haribote OS .

## コンパイル方法

### 注意点

- gccでコンパイルしないとうまく動きません。
 - つまりMacOSXでコンパイルする際は、標準のclangではなく、適切なgccを指定する必要があります。
 - 以下はHomebrewでgcc6.2.0を導入している場合の例です。
 - `make GCC=/usr/local/Cellar/gcc/6.2.0/bin/gcc-6`

### 手順

- リポジトリ直下で
 - `make`するとバイナリが生成されます。
 - `make install`すると、そのバイナリを`ok`ディレクトリ以下に配置します。
  - これを`z_tools`に改名して適切な場所に配置してください。

## ベースとなったソースコード
- このブランチは、Akkie氏によって移植された2007-02-21版のソースをベースに、最新のMac向けの修正を加えています。
- ベースとなったソースコードのパッケージは、以下のサイトから取得できます。
 - http://shrimp.marokun.net/osakkie/wiki/tolsetOSX/

## 修正点
### haritol
- 標準ライブラリのみ使用
- マルチプラットフォームでの開発に対応するため、追加されました。
- OSごとに引数の形式が異なるコマンド(del/rm copy/cat)の肩代わりをします

### fdimg2iso
- 標準ライブラリのみ使用
- fdのダンプイメージを、ブータブルなisoイメージに変換します。
 - ブータブルCDの作成が簡単に行えます。

## 判明している問題

### `sys/cdefs.h: No such file or directory`とのエラーが出る
- Ubuntuの場合は、以下のコマンドを実行して、必要なパッケージをインストールしてください。(Thanks @sk2sat!)
 - `apt-get install libc6-dev-i386`
 
### go_0023sのコンパイルにMac OSX上で失敗する
- ~~gocc1などについては、配布されているコンパイル済みのバイナリをご利用ください。~~
 - この問題は修正されました。
