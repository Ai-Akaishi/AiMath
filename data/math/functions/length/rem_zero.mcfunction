#> math:length/rem_zero
### Copyright © 2023 赤石愛
### This software is released under the MIT License, see LICENSE.

## ０じゃなかったら残すよ
data modify storage math:_ x set from storage math:_ in[-1]
execute unless data storage math:_ {x:0f} run data modify storage math:_ _ append from storage math:_ x
data remove storage math:_ in[-1]

## 残りがあったら繰り返し
execute if data storage math:_ in[-1] run function math:length/rem_zero
