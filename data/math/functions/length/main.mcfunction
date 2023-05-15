#> math:length/main
# 距離計算処理
### Copyright © 2023 赤石愛
### This software is released under the MIT License, see LICENSE.

## 入力がdoubleだった場合、変換が必要だよ？
data modify storage math:_ matrix set value [0d]
data modify storage math:_ matrix append from storage math:_ in[-1]
## リストの中の個数が２個になってたら、doubleでデータが来ているので、変換するよ
data remove storage math:_ _
execute if data storage math:_ matrix[-2] run function math:length/convert
data modify storage math:_ in set from storage math:_ _ 

## ０は消しておく
data remove storage math:_ _
execute if data storage math:_ in[-1] run function math:length/rem_zero
data modify storage math:_ in set from storage math:_ _ 

## ２つ以上あったら処理
execute if data storage math:_ in[-2] run function math:length/loop_v2

## 残った１つが求めたい距離
data modify storage math: out set value 0f
data modify storage math: out set from storage math:_ in[0]

## もうdisplay要らないので削除
kill @s
