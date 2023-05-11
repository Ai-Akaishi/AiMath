#> math:length/loop
# 距離計算処理
### Copyright © 2023 赤石愛
### This software is released under the MIT License, see LICENSE.

## 入力を取得
data modify storage math:_ _ set value {}
data modify storage math:_ _.x set from storage math:_ in[-1]
data modify storage math:_ _.y set from storage math:_ in[-2]

## x^2, xy, y^2, x, y, -x, -y が必要

## 1/x, y/x, -1/x を求める = (1, y, -1) / x
data modify storage math:_ matrix set value [1f, 0f, 0f, 0f, 0f, 1f, 0f, 0f, 0f, 0f, 1f, 0f, 0f, 0f, 0f, 1f]
data modify storage math:_ matrix[3] set value 1f
data modify storage math:_ matrix[7] set from storage math:_ _.y
data modify storage math:_ matrix[11] set value -1f
data modify storage math:_ matrix[15] set from storage math:_ _.x
data modify entity @s transformation set from storage math:_ matrix
data modify storage math:_ transformation set from entity @s transformation
data modify storage math:_ _.1_x set from storage math:_ transformation.translation[0]
data modify storage math:_ _.y_x set from storage math:_ transformation.translation[1]
data modify storage math:_ _._1_x set from storage math:_ transformation.translation[2]

## x/y, 1/xy, -1/y を求める = (x, 1/x, -1) / y
data modify storage math:_ matrix set value [1f, 0f, 0f, 0f, 0f, 1f, 0f, 0f, 0f, 0f, 1f, 0f, 0f, 0f, 0f, 1f]
data modify storage math:_ matrix[3] set from storage math:_ _.x
data modify storage math:_ matrix[7] set from storage math:_ _.1_x
data modify storage math:_ matrix[11] set value -1f
data modify storage math:_ matrix[15] set from storage math:_ _.y
data modify entity @s transformation set from storage math:_ matrix
data modify storage math:_ transformation set from entity @s transformation
data modify storage math:_ _.x_y set from storage math:_ transformation.translation[0]
data modify storage math:_ _.1_xy set from storage math:_ transformation.translation[1]
data modify storage math:_ _._1_y set from storage math:_ transformation.translation[2]

## x^2, y^2, xy, -x, -y を求める = (x/y, y/x, 1, -1/y, -1/x) / (1/xy)
data modify storage math:_ matrix set value [1f, 0f, 0f, 0f, 0f, 1f, 0f, 0f, 0f, 0f, 1f, 0f, 0f, 0f, 0f, 1f]
data modify storage math:_ matrix[3] set from storage math:_ _._1_y
data modify storage math:_ matrix[7] set from storage math:_ _._1_x
data modify storage math:_ matrix[11] set value 1f
data modify storage math:_ matrix[0] set from storage math:_ _.x_y
data modify storage math:_ matrix[5] set from storage math:_ _.y_x
data modify storage math:_ matrix[15] set from storage math:_ _.1_xy
data modify entity @s transformation set from storage math:_ matrix
data modify storage math:_ transformation set from entity @s transformation
data modify storage math:_ _._x set from storage math:_ transformation.translation[0]
data modify storage math:_ _._y set from storage math:_ transformation.translation[1]
data modify storage math:_ _.xy set from storage math:_ transformation.translation[2]
# 負数にならないのでscaleでOK
data modify storage math:_ _.xx set from storage math:_ transformation.scale[0]
data modify storage math:_ _.yy set from storage math:_ transformation.scale[1]

## √x^2+y^2 を求める
data modify storage math:_ matrix set value [1f, 0f, 0f, 0f, 0f, 1f, 0f, 0f, 0f, 0f, 1f, 0f, 0f, 0f, 0f, 1f]
data modify storage math:_ matrix[0] set from storage math:_ _.xx
data modify storage math:_ matrix[1] set from storage math:_ _.xy
data modify storage math:_ matrix[2] set from storage math:_ _.y
data modify storage math:_ matrix[4] set from storage math:_ _.xy
data modify storage math:_ matrix[5] set from storage math:_ _.yy
data modify storage math:_ matrix[6] set from storage math:_ _._x
data modify storage math:_ matrix[8] set from storage math:_ _._y
data modify storage math:_ matrix[9] set from storage math:_ _.x
data modify storage math:_ matrix[10] set value 0f
data modify entity @s transformation set from storage math:_ matrix
data modify storage math:_ transformation set from entity @s transformation

## 結果を入れる
data modify storage math:_ in[-2] set from storage math:_ transformation.scale[-1]
data remove storage math:_ in[-1]

## まだ値が２つ以上残っていたらループ
execute if data storage math:_ in[-2] run function math:length/loop
