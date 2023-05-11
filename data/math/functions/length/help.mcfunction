#> math:length/help
# #math:lengthのヘルプを表示します。
### Copyright © 2023 赤石愛
### This software is released under the MIT License, see LICENSE.

tellraw @s {"translate":" === function #math:%s ===","color":"aqua","with":["length"]}
tellraw @s "指定されたベクトルの長さを取得します。"
tellraw @s {"translate":"入力%1$s: %2$s%3$s","with":[{"text":"(math: in)  ","color":"gray"},{"text":"vector","bold":true},{"text":"([float,...] or [double,...])","color":"gray"}]}
tellraw @s {"translate":"出力%1$s: %2$s%3$s","with":[{"text":"(math: out)","color":"gray"},{"text":"length","bold":true},{"text":"(float)","color":"gray"}]}
