### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## 縦幅分だけ繰り返し
execute if data storage math:_ maze[-1][-1] run function math:maze/setup/width
data remove storage math:_ maze[-1]
execute if data storage math:_ maze[-1] positioned ~ ~1 ~ run function math:maze/setup/height
