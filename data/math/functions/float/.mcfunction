#> math:float/
# フロート演算します。いろいろ。
## 入力: x(float),y(float/optional) <= storage math: in
## 出力: add(x+y),sub(x-y),mul(x*y),div(x/y),inv(1/x),neg(-x) => storage math: out
### Copyright © 2023 赤石愛
### This software is released under the MIT License, see LICENSE.

## Yがオプションなので、存在しなければ0扱いにする
data modify storage math:_ in set from storage math: in
execute unless data storage math:_ in.y run data modify storage math:_ in.y set value 0f

## 結果をリセットする
data modify storage math: out set value {}

## ディスプレイで計算する
execute summon minecraft:item_display run function math:float/calc
