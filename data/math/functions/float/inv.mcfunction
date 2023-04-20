#> math:float/inv
# フロート演算します。いろいろ。
### Copyright © 2023 赤石愛
### This software is released under the MIT License, see LICENSE.

## 和と差の負数を求める
data modify storage math:_ matrix set value [0f, 0f, 0f, 0f, 0f, 0f, 0f, 0f, 0f, 0f, 1f, 0f, 0f, 0f, 0f, -1f]
data modify storage math:_ matrix[3] set from storage math: out.add
data modify storage math:_ matrix[7] set from storage math: out.sub

data modify entity @s transformation set from storage math:_ matrix
data modify storage math:_ transformation set from entity @s transformation

## 必要なら結果の符号を変える
# abs=1: [X]>[Y]
#   X>=0: none
#   X<0 : -add -sub
# abs=-1: [Y]>[X]
#   Y>=0: -sub
#   Y<0 : -add
## 符号比較が-でYも-なら和をひっくり返す
execute if data storage math:_ flag{abs:"-",y:"-"} run data modify storage math: out.add set from storage math:_ transformation.translation[0]
## 符号比較が-でYが-じゃないなら差をひっくり返す
execute if data storage math:_ flag{abs:"-"} unless data storage math:_ flag{y:"-"} run data modify storage math: out.sub set from storage math:_ transformation.translation[1]
## 符号比較が-じゃなくて、Xが-なら和も差もひっくり返す
execute unless data storage math:_ flag{abs:"-"} if data storage math:_ flag{x:"-"} run data modify storage math: out.add set from storage math:_ transformation.translation[0]
execute unless data storage math:_ flag{abs:"-"} if data storage math:_ flag{x:"-"} run data modify storage math: out.sub set from storage math:_ transformation.translation[1]
