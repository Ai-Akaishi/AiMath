#> math:sort/number/sort/descend/shift
### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.

data remove storage math:_ ascend[-1]
data remove storage math:_ ascend[-1]
execute if data storage math:_ ascend[-1][-1] store result score _1 AiMath run data get storage math:_ ascend[-1][-1]
execute if data storage math:_ ascend[-2][-1] store result score _2 AiMath run data get storage math:_ ascend[-2][-1]
execute if data storage math:_ ascend[0] run data modify storage math:_ descend append value []
