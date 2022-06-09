#> math:sort/compound/sort/
# ナチュラルマージソートします。  
### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.

data modify storage math:_ list set from storage math: in

data modify storage math:_ descend set value []
scoreboard players set _2 AiMath -2147483648
execute if data storage math:_ list[0] run function math:sort/compound/sort/setup
function math:sort/compound/sort/ascend/
