#> math:random/inner
# 0 から 2147483647 までの乱数を生成します。
# ライブラリ内部で利用する時用。
### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.

#define storage math:_

scoreboard players set Random AiMath 0
execute if predicate math:0.5 run scoreboard players add Random AiMath 1
scoreboard players operation Random AiMath += Random AiMath
execute if predicate math:0.5 run scoreboard players add Random AiMath 1
scoreboard players operation Random AiMath += Random AiMath
execute if predicate math:0.5 run scoreboard players add Random AiMath 1
scoreboard players operation Random AiMath += Random AiMath
execute if predicate math:0.5 run scoreboard players add Random AiMath 1
scoreboard players operation Random AiMath += Random AiMath
execute if predicate math:0.5 run scoreboard players add Random AiMath 1
scoreboard players operation Random AiMath += Random AiMath
execute if predicate math:0.5 run scoreboard players add Random AiMath 1
scoreboard players operation Random AiMath += Random AiMath
execute if predicate math:0.5 run scoreboard players add Random AiMath 1
scoreboard players operation Random AiMath += Random AiMath
execute if predicate math:0.5 run scoreboard players add Random AiMath 1
scoreboard players operation Random AiMath += Random AiMath
execute if predicate math:0.5 run scoreboard players add Random AiMath 1
scoreboard players operation Random AiMath += Random AiMath
execute if predicate math:0.5 run scoreboard players add Random AiMath 1

scoreboard players operation Random AiMath += Random AiMath
execute if predicate math:0.5 run scoreboard players add Random AiMath 1
scoreboard players operation Random AiMath += Random AiMath
execute if predicate math:0.5 run scoreboard players add Random AiMath 1
scoreboard players operation Random AiMath += Random AiMath
execute if predicate math:0.5 run scoreboard players add Random AiMath 1
scoreboard players operation Random AiMath += Random AiMath
execute if predicate math:0.5 run scoreboard players add Random AiMath 1
scoreboard players operation Random AiMath += Random AiMath
execute if predicate math:0.5 run scoreboard players add Random AiMath 1
scoreboard players operation Random AiMath += Random AiMath
execute if predicate math:0.5 run scoreboard players add Random AiMath 1
scoreboard players operation Random AiMath += Random AiMath
execute if predicate math:0.5 run scoreboard players add Random AiMath 1
scoreboard players operation Random AiMath += Random AiMath
execute if predicate math:0.5 run scoreboard players add Random AiMath 1
scoreboard players operation Random AiMath += Random AiMath
execute if predicate math:0.5 run scoreboard players add Random AiMath 1
scoreboard players operation Random AiMath += Random AiMath
execute if predicate math:0.5 run scoreboard players add Random AiMath 1

scoreboard players operation Random AiMath += Random AiMath
execute if predicate math:0.5 run scoreboard players add Random AiMath 1
scoreboard players operation Random AiMath += Random AiMath
execute if predicate math:0.5 run scoreboard players add Random AiMath 1
scoreboard players operation Random AiMath += Random AiMath
execute if predicate math:0.5 run scoreboard players add Random AiMath 1
scoreboard players operation Random AiMath += Random AiMath
execute if predicate math:0.5 run scoreboard players add Random AiMath 1
scoreboard players operation Random AiMath += Random AiMath
execute if predicate math:0.5 run scoreboard players add Random AiMath 1
scoreboard players operation Random AiMath += Random AiMath
execute if predicate math:0.5 run scoreboard players add Random AiMath 1
scoreboard players operation Random AiMath += Random AiMath
execute if predicate math:0.5 run scoreboard players add Random AiMath 1
scoreboard players operation Random AiMath += Random AiMath
execute if predicate math:0.5 run scoreboard players add Random AiMath 1
scoreboard players operation Random AiMath += Random AiMath
execute if predicate math:0.5 run scoreboard players add Random AiMath 1
scoreboard players operation Random AiMath += Random AiMath
execute if predicate math:0.5 run scoreboard players add Random AiMath 1

scoreboard players operation Random AiMath += Random AiMath
execute if predicate math:0.5 run scoreboard players add Random AiMath 1

execute store result storage math:_ random int 1 run scoreboard players get Random AiMath
