### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.

#> math:help/clock
# #math:clockのヘルプを表示します。

tellraw @s {"translate":" === function #math:%s ===","color":"aqua","with":["clock"]}
tellraw @s "時計としてのデータを生成します。"
tellraw @s {"translate":"入力%1$s: %2$s%3$s","with":[{"text":"(math: in)  ","color":"gray"},{"text":"tick","bold":true},{"text":"(int)","color":"gray"}]}
tellraw @s {"translate":"出力%1$s: %2$s%3$s","with":[{"text":"(math: out)","color":"gray"},{"text":"{day:日数,hour:時間,minute:分,second:秒,sent:センチ秒,total_hour:トータル時間,total_minute:トータル分,total_second:トータル秒,total_sent:トータルセンチ秒}","bold":true},{"text":"(each is int type)","color":"gray"}]}
