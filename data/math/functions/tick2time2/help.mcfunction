#> math:help/tick2time2
# #math:tick2time2のヘルプを表示します。
### Copyright © 2023 赤石愛
### This software is released under the MIT License, see LICENSE.

tellraw @s {"translate":" === function #math:%s ===","color":"aqua","with":["tick2time2"]}
tellraw @s "tick値を(h:)mm:ss形式にします。(端数切り上げ)"
tellraw @s {"translate":"入力%1$s: %2$s%3$s","with":[{"text":"(math: in)  ","color":"gray"},{"text":"tick","bold":true},{"text":"(int)","color":"gray"}]}
tellraw @s {"translate":"出力%1$s: %2$s%3$s","with":[{"text":"(math: out)","color":"gray"},{"text":"時間データ","bold":true},{"text":"([string,...])","color":"gray"}]}
