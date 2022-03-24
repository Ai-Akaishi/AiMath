### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## お部屋のあるラインの壁
data modify storage math: out[-2] append value "□"
data modify storage math: out[-2] append value "■"
execute if entity @e[distance=..0.01,tag=AiMath,tag=!AiMathWall,x_rotation=0..0,limit=1] run data modify storage math: out[-2][-1] set value "□"

## 一つ上のラインの壁
data modify storage math: out[-1] append value "■"
data modify storage math: out[-1] append value "■"
execute if entity @e[distance=..0.01,tag=AiMath,tag=!AiMathWall,x_rotation=-90..-90,limit=1] run data modify storage math: out[-1][-2] set value "□"

## 繰り返し
execute positioned ~ ~ ~1 if entity @e[distance=..0.01,tag=AiMath,limit=1] run function math:maze/teardown/width
