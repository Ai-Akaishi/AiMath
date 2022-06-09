#> math:sort/number/sort/descend/
# 降順を保つようにマージする。
### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.

execute store result score _1 AiMath run data get storage math:_ ascend[-1][-1]
execute store result score _2 AiMath run data get storage math:_ ascend[-2][-1]
execute unless data storage math:_ ascend[-2][-1] run scoreboard players set _2 AiMath -2147483648
data modify storage math:_ descend set value [[]]
function math:sort/number/sort/descend/loop
execute if data storage math:_ descend[1] run function math:sort/number/sort/ascend/
