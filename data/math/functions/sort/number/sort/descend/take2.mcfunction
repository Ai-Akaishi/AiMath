#> math:sort/number/sort/descend/take2
### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.

data modify storage math:_ descend[-1] append from storage math:_ ascend[-2][-1]
data remove storage math:_ ascend[-2][-1]
execute store result score _2 AiMath run data get storage math:_ ascend[-2][-1]
execute unless data storage math:_ ascend[-2][-1] run scoreboard players set _2 AiMath -2147483648
