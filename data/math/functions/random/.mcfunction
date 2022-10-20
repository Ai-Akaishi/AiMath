#> math:random/
# 0 から 2147483647 までの乱数を生成します。
## 入力: なし
## 出力: 乱数 => storage math: out
### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.

## 0 から 2147483647 までの乱数をmath: outに入れます

scoreboard objectives add AiMath dummy

data modify storage math: {} merge value {in:[],out:0}
execute store result storage math: out int 1 run function math:random/inner

scoreboard players reset Random AiMath
scoreboard objectives remove AiMath
