#> math:length/
# 指定されたベクトルの長さを取得します。
## 入力: vector([float,...] or [double,...]) => storage math: in
## 出力: length(float) => storage math: out
### Copyright © 2023 赤石愛
### This software is released under the MIT License, see LICENSE.

## コピーとります
data modify storage math:_ in set from storage math: in

execute summon minecraft:item_display run function math:length/main
