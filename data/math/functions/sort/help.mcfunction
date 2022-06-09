#> math:sort/help
# #math:sinのヘルプを表示します。
### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.

tellraw @s "並べかえられるリストは、byte型、short型、int型,weightを持つtag_compoundです。"
tellraw @s {"translate":"入力%1$s: %2$s%3$s","with":[{"text":"(math: in)  ","color":"gray"},{"text":"並び替えるリスト","bold":true},{"text":"[(byte/short/int/{weight:int},..]","color":"gray"}]}
tellraw @s {"translate":"出力%1$s: %2$s%3$s","with":[{"text":"(math: out)","color":"gray"},{"text":"並び替えたリスト","bold":true},{"text":"[(byte/short/int/{weight:int},..]","color":"gray"}]}
