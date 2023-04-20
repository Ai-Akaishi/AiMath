#> math:float/help
# #math:floatのヘルプを表示します。
### Copyright © 2023 赤石愛
### This software is released under the MIT License, see LICENSE.

tellraw @s {"translate":" === function #math:%s ===","color":"aqua","with":["float"]}
tellraw @s "float型の計算をします。いろいろ。"
tellraw @s {"translate":"入力%1$s: %2$s%3$s","with":[{"text":"(math: in)  ","color":"gray"},{"text":"x, y","bold":true},{"text":"(float, float/optional)","color":"gray"}]}
tellraw @s {"translate":"出力%1$s: %2$s%3$s","with":[{"text":"(math: out)","color":"gray"},{"text":"add(x+y),sub(x-y),mul(x*y),div(x/y),inv(1/x),neg(-x)","bold":true},{"text":"(float)","color":"gray"}]}
