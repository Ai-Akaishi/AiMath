#> math:length/loop_v2
# 距離計算処理
### Copyright © 2023 赤石愛
### This software is released under the MIT License, see LICENSE.

## math:length/loopより簡単にできるらしい(@akiponggg0119さんより)
## 入力を取得
data modify storage math:_ _ set value {}
data modify storage math:_ _.x set from storage math:_ in[-1]
data modify storage math:_ _.y set from storage math:_ in[-2]
data remove storage math:_ in[-1]
data remove storage math:_ in[-1]

## -y 取得
data modify storage math:_ matrix set value [0f, 0f, 0f, 0f, 0f, 0f, 0f, 0f, 0f, 0f, 0f, 0f, 0f, 0f, 0f, -1f]
data modify storage math:_ matrix[3] set from storage math:_ _.y
data modify entity @s transformation set from storage math:_ matrix
data modify storage math:_ _._y set from entity @s transformation.translation[0]

## scale[0] = √x^2+y^2+z^2
data modify storage math:_ matrix set value [0f, 0f, 0f, 0f, 0f, 0f, 0f, 0f, 0f, 0f, 0f, 0f, 0f, 0f, 0f, 1f]
data modify storage math:_ matrix[0] set from storage math:_ _.x
data modify storage math:_ matrix[1] set from storage math:_ _._y
data modify storage math:_ matrix[4] set from storage math:_ _.y
data modify storage math:_ matrix[5] set from storage math:_ _.x
data modify storage math:_ matrix[10] set value 1f
data modify entity @s transformation set from storage math:_ matrix
## 結果を入れる
data modify storage math:_ in append from entity @s transformation.scale[0]

## まだ値が２つ以上残っていたらループ
execute if data storage math:_ in[-2] run function math:length/loop_v2
