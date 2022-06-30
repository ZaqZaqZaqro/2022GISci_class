# brief explanation of this directory

## ../data directory/
本レポートで使用した地図データと各年度の観光入込客数のデータ


## final_report.Rmd
Rmdファイル。レポートのソースコードが記載されている。

# lib-in
ライブラリを読み込む。

# functionSet
観光入込客数のデータをxlsxファイルから読み込み、必要な部分だけに整形する関数を設定している。
年度ごとにxlsxの記述の仕様が異なるため、少し複雑になっている。

# loadData_and_makeMap
functionSetの関数を使って読み込んだデータと地図データを合わせて年度ごとの地図を表示するgifファイルを作成、保存する。
合計数と対前年度比それぞれでgifを作る。


## ./figures/ directory
作成したgifファイルを保存している。


## bibliography.bib
使用した観光入込客数データと地図データについて記載している。
