#> math:sort/compound/sort/ascend/loop
### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.

execute if score _1 AiMath <= _2 AiMath run function math:sort/compound/sort/ascend/take1
execute if score _2 AiMath <= _1 AiMath run function math:sort/compound/sort/ascend/take2
execute unless data storage math:_ descend[-1][-1] unless data storage math:_ descend[-2][-1] run function math:sort/compound/sort/ascend/shift
execute if data storage math:_ descend[0] run function math:sort/compound/sort/ascend/loop
