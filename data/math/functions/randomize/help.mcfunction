#> math:randomize/help
# #math:randomizeのヘルプを表示します。
### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.

tellraw @s {"translate":" === function #math:%s ===","color":"aqua","with":["randomize"]}
tellraw @s "与えられたリストをランダムに並び替えます。"
tellraw @s {"translate":"入力%1$s: %2$s%3$s","with":[{"text":"(math: in)  ","color":"gray"},{"text":"並び替えるリスト","bold":true},{"text":"[...]","color":"gray"}]}
tellraw @s {"translate":"出力%1$s: %2$s%3$s","with":[{"text":"(math: out)","color":"gray"},{"text":"並び替えたリスト","bold":true},{"text":"[...]","color":"gray"}]}
