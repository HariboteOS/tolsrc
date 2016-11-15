tolsrc for OS X メモ   　　　　　　　　　　2007/02/21　あっきぃ

・OS自作入門付属CDのtolsrcの中でバージョンアップしたツール
　　edimg   (0i → 0j)
　　obj2bim (4b(c) → 4d)
　　t5lzma  (MonaOSのものを使用・lzmaベースバージョン 4.03 → 4.06)

・OS X向けに改良するにあたって改良したところ
　　・hideyosiさんのパッチを当てた
　　　http://thebbl.hideyosi.com/modules/bwiki/tolset/index.php?tolset
　　・go_0023s/gcc/toplev.cを-O1でコンパイルするように変更

・ライセンスについて
　　t5lzmaはLGPLライセンスです。
　　その他についてはKL-01です。

・コンパイルのしかた
　　tolsrc内でmake installを実行してください。最後までコンパイルができたら、
　OKディレクトリにツールがすべて入ります。

・お問い合わせ
　akkiesoft::marokun.net (::は@にかえてください。)
