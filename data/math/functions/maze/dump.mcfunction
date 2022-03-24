### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

tellraw @s {"nbt":"out[-1][]","storage":"math:","separator":""}
data remove storage math: out[-1]
execute if data storage math: out[-1] run function math:maze/dump
