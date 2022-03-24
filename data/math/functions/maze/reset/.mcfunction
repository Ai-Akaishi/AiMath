### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## サイズ指定だった時の処理

## コピーしておく
data modify storage math:_ width set from storage math: in[0]
data modify storage math:_ height set from storage math: in[1]

## 横のサイズ分だけ追加
data modify storage math:_ line set value []
execute unless data storage math:_ {width:0} run function math:maze/reset/width

## 縦のサイズ分だけ追加
data modify storage math:_ maze set value []
execute unless data storage math:_ {height:0} run function math:maze/reset/height
