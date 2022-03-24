### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## 縦幅分だけ繰り返し
execute unless data storage math:_ {height:0} run data modify storage math:_ maze append from storage math:_ line
execute store result storage math:_ height int 1 run data get storage math:_ height 0.9999999999
execute unless data storage math:_ {height:0} run function math:maze/reset/height
