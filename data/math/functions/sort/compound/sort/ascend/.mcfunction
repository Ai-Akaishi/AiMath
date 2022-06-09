#> math:sort/compound/sort/ascend/
# 昇順を保つようにマージする。
### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.

execute store result score _1 AiMath run data get storage math:_ descend[-1][-1].weight
execute store result score _2 AiMath run data get storage math:_ descend[-2][-1].weight
execute unless data storage math:_ descend[-2][-1] run scoreboard players set _2 AiMath 2147483647
data modify storage math:_ ascend set value [[]]
function math:sort/compound/sort/ascend/loop
execute if data storage math:_ ascend[1] run function math:sort/compound/sort/descend/
