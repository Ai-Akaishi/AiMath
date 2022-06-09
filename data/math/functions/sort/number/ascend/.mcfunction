#> math:sort/number/ascend/
### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.

function math:sort/number/sort/
### 中身が昇順じゃなかったら、降順に入れ換え
execute unless data storage math:_ ascend[0] run function math:sort/number/sort/ascend/
data modify storage math: out set from storage math:_ ascend[0]
