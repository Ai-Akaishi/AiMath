#> math:sort/compound/sort/descend/take1
### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.

data modify storage math:_ descend[-1] append from storage math:_ ascend[-1][-1]
data remove storage math:_ ascend[-1][-1]
execute store result score _1 AiMath run data get storage math:_ ascend[-1][-1].weight
execute unless data storage math:_ ascend[-1][-1] run scoreboard players set _1 AiMath -2147483648
