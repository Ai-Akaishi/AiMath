#> math:sort/compound/sort/descend/loop
### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.

execute if score _1 AiMath >= _2 AiMath run function math:sort/compound/sort/descend/take1
execute if score _2 AiMath >= _1 AiMath run function math:sort/compound/sort/descend/take2
execute unless data storage math:_ ascend[-1][-1] unless data storage math:_ ascend[-2][-1] run function math:sort/compound/sort/descend/shift
execute if data storage math:_ ascend[0] run function math:sort/compound/sort/descend/loop
