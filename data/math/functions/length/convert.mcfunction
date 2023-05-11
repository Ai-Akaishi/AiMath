#> math:length/convert
# doubleからfloatに変換する
### Copyright © 2023 赤石愛
### This software is released under the MIT License, see LICENSE.

## ６つ分一気に変換するよ
data modify storage math:_ matrix set value [1d, 0d, 0d, 0d, 0d, 1d, 0d, 0d, 0d, 0d, 1d, 0d, 0d, 0d, 0d, 1d]
data modify storage math:_ matrix[0] set from storage math:_ in[-1]
data modify storage math:_ matrix[5] set from storage math:_ in[-2]
data modify storage math:_ matrix[10] set from storage math:_ in[-3]
data modify storage math:_ matrix[3] set from storage math:_ in[-4]
data modify storage math:_ matrix[7] set from storage math:_ in[-5]
data modify storage math:_ matrix[11] set from storage math:_ in[-6]
data modify entity @s transformation set from storage math:_ matrix
data modify storage math:_ transformation set from entity @s transformation
execute if data storage math:_ in[-1] run data modify storage math:_ _ append from storage math:_ transformation.scale[0]
execute if data storage math:_ in[-2] run data modify storage math:_ _ append from storage math:_ transformation.scale[1]
execute if data storage math:_ in[-3] run data modify storage math:_ _ append from storage math:_ transformation.scale[2]
execute if data storage math:_ in[-4] run data modify storage math:_ _ append from storage math:_ transformation.translation[0]
execute if data storage math:_ in[-5] run data modify storage math:_ _ append from storage math:_ transformation.translation[1]
execute if data storage math:_ in[-6] run data modify storage math:_ _ append from storage math:_ transformation.translation[2]

data remove storage math:_ in[-1]
data remove storage math:_ in[-1]
data remove storage math:_ in[-1]
data remove storage math:_ in[-1]
data remove storage math:_ in[-1]
data remove storage math:_ in[-1]

## 残りがあったら繰り返し
execute if data storage math:_ in[-1] run function math:length/convert
