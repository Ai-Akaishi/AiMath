### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## 横幅分だけ繰り返し
execute unless data storage math:_ {width:0} run data modify storage math:_ line append value "■"
execute store result storage math:_ width int 1 run data get storage math:_ width 0.9999999999
execute unless data storage math:_ {width:0} run function math:maze/reset/width
