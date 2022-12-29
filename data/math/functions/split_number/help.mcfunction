#> math:split_number/help
# math:split_numberのヘルプを表示します。
### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.

tellraw @s {"translate":" === function #math:%s ===","color":"aqua","with":["split_number"]}
tellraw @s "数字を各桁に分割します。"
tellraw @s {"translate":"入力%1$s: %2$s%3$s","with":[{"text":"(math: in)  ","color":"gray"},{"text":"整数,","bold":true},{"text":"(int)","color":"gray"}]}
tellraw @s {"translate":"出力%1$s: %2$s%3$s","with":[{"text":"(math: out)","color":"gray"},{"text":"各桁のリスト","bold":true},{"text":"([int,..])","color":"gray"}]}
