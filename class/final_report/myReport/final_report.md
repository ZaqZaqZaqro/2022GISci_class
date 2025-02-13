GIScience class final report
================
星澤 知宙
2022年6月30日

-   [0. 要旨](#0-要旨)
-   [1. はじめに](#1-はじめに)
    -   [1.1 背景](#11-背景)
    -   [1.2 目的](#12-目的)
-   [2. 手法](#2-手法)
-   [3. データ](#3-データ)
-   [4. 結果](#4-結果)
-   [5. 考察](#5-考察)
-   [6. 結論](#6-結論)
-   [7. Graphic Abstract](#7-graphic-abstract)
-   [8. 参考文献](#8-参考文献)

## 0. 要旨

本レポートでは2000年度以降の各市町村における観光入込客数を地図で描画し、俯瞰して見ることで北海道の各地域、年度における観光業について分析した。
また、本レポートでは2020年度及び2021年度前期のデータも扱うことで、新型コロナウイルスによる観光業への影響についても考察した。

<br> <br>

## 1. はじめに

### 1.1 背景

近年、北海道ではその自然やグルメに注目が集まり、観光業が盛んになっている。
しかし北海道は日本で最も広大な土地を持つ都道府県であり、当然各市町村によって観光業の発展具合は異なると考えられる。
そこで、北海道の観光入込客数を各市町村、各年度ごとに地図で描画し、俯瞰的に考察するのが良いと考えた。
200近い市町村によって構成される北海道は地図を用いる分析が向いていると考えたこともこのテーマを選んだ理由の1つである。

### 1.2 目的

各年度ごとの観光入込客数について分析することで、観光業の盛んな都道府県の1つである北海道における観光客の分布及び推移を見ていく。
その中で有用な知見や発見を得ることが目的である。

## 2. 手法

各年度における北海道各市町村の観光入込客数を地図に描画する。
ここでは各年度における観光入込客数の合計と対前年度比をそれぞれ描画する。

## 3. データ

本レポートで主に扱う観光入込客数とは、北海道の内外問わずその市町村を訪れた人の数のことである。

観光入込客数のデータは([北海道経済部観光局観光振興課,
n.d.](#ref-tourists_data))のものを用いた。
このサイトでは2000年度以降のデータがexcelファイル形式で、それ以前のデータがPDF形式のみで配布されている。
PDF形式のデータは処理が難しいため使用を断念し、2000年度以降のデータのみを使用する。
2021年度については、4月から9月までの前期のデータのみが公開されている。
本レポートでは2021年度のデータをできるだけ他年度と同様に扱うために、2021年度の観光入込客数を2倍にして地図に描画している。
そのため、2021年度の地図については参考程度の扱いとなる。
また、北海道では2000年度時点で213あった市町村が合併等により2020年度には179となっている。
この過程で市町村名が変わっている地域も多く、最後に合併があった2009年度までは地図に抜けている箇所がある。

地図のデータは([総合政策部DX推進課,
n.d.](#ref-map_data))のものを使用した。

## 4. 結果

``` r
knitr::include_graphics("figures/anim_map_sum.gif")
```

![図1.
各年度における観光入込客数の合計(単位:人)](figures/anim_map_sum.gif)

``` r
knitr::include_graphics("figures/anim_map_rat.gif")
```

![図2.
各年度における観光入込客数の対前年度比(単位:%)](figures/anim_map_rat.gif)

図1からは市町村によって明らかな観光入込客数の偏りがあることが分かった。
旭川市や釧路市以外の観光入込客数が多い市町村は南西に集まっていることも地図から読み取ることができた。

また、図2からは2020年度にほとんどの市町村で対前年度比の観光入込客数が減少していることが分かった。

## 5. 考察

図1から、北海道の観光入込客数には市町村の位置によって明らかな偏りが見られた。
これは北海道が広大で道内の移動にも時間がかかるため、自然と観光客が近い市町村を巡ることが多いからだと考えられる。
また、観光入込客数の多い市町村の中でも札幌市は特に多く、2000年度から2019年度にかけて観光入込客数が特に増加していた。
北海道を訪れる観光客の多くは、札幌市を中心として周囲の他市町村を巡る形で観光しているのだと考えられる。

図2からは2020年度の対前年度比の観光入込客数がほぼ全市町村で減少していることが分かった。
これはやはり新型コロナウイルスの影響が観光客数に強く出ていることが分かった。

## 6. 結論

本レポートでは2000年度以降の各市町村における観光入込客数を地図で描画し、俯瞰して見ることで北海道の各地域、年度における観光業について分析した。
結果、北海道を訪れる観光客は札幌市を中心として、周辺の各市町村を観光している人が多いのではないかと考察した。
また、新型コロナウイルスが北海道全体で観光業に強く影響していることも分かった。

## 7. Graphic Abstract

``` r
knitr::include_graphics("figures/anim_map_sum.gif")
```

![図3.
各年度における観光入込客数の合計比(再掲)](figures/anim_map_sum.gif)

## 8. 参考文献

<div id="refs" class="references csl-bib-body hanging-indent">

<div id="ref-tourists_data" class="csl-entry">

北海道経済部観光局観光振興課. n.d. “北海道観光入込客数調査報告書.”
<https://www.pref.hokkaido.lg.jp/kz/kkd/irikomi.html>.

</div>

<div id="ref-map_data" class="csl-entry">

総合政策部DX推進課. n.d. “北海道の地図GISデータ【北海道】.”
<https://www.harp.lg.jp/opendata/dataset/1379/resource/2889/hokkaido_map_4612.geojson>.

</div>

</div>
