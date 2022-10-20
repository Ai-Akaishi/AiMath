#> math:randomize/
# ランダムに並び替える
## 入力: 並び替えるもの([...]) => storage math: in
## 出力: 並び替えたもの([...]) => storage math: out
### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.

## コピーとっとく！
data modify storage math:_ in set from storage math: in
data modify storage math:_ _ set from storage math:_ in
## 入力リセット
data modify storage math: in set value []

## ランダムに数字を割り当てる
scoreboard objectives add AiMath dummy
execute if data storage math:_ _[-1] run function math:randomize/setup
scoreboard players reset Random AiMath

## その数字で並び替えてあげる！！
function #math:sort/ascend

## 余計な数字を消してあげる～
data modify storage math:_ _ set from storage math: out
data modify storage math: out set value []
data modify storage math: out append from storage math:_ _[].data

## 入力は戻しとく
data modify storage math: in set from storage math:_ in
