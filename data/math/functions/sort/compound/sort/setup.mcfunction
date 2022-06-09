#> math:sort/compound/sort/setup
### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.

execute store result score _1 AiMath run data get storage math:_ list[-1].weight
execute if score _2 AiMath < _1 AiMath run data modify storage math:_ descend append value []
data modify storage math:_ descend[-1] append from storage math:_ list[-1]
scoreboard players operation _2 AiMath = _1 AiMath
data remove storage math:_ list[-1]
execute if data storage math:_ list[0] run function math:sort/compound/sort/setup
