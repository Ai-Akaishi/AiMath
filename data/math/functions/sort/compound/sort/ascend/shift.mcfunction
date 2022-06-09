#> math:sort/compound/sort/ascend/shift
### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.

data remove storage math:_ descend[-1]
data remove storage math:_ descend[-1]
execute if data storage math:_ descend[-1][-1] store result score _1 AiMath run data get storage math:_ descend[-1][-1].weight
execute if data storage math:_ descend[-2][-1] store result score _2 AiMath run data get storage math:_ descend[-2][-1].weight
execute if data storage math:_ descend[0] run data modify storage math:_ ascend append value []
