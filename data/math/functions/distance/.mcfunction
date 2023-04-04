#> math:distance/
### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.

### 結果を入れるスコアを０にしておく
scoreboard objectives add AiMath dummy
scoreboard players set _ AiMath 0

### ほんのちょっぴり離れておく(ぴったりの時用)
execute facing entity @s feet positioned ^ ^ ^-0.00000001 run function math:distance/16

execute store result storage math: out double 0.01 run scoreboard players get _ AiMath
