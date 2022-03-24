### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## ラインの追加
data modify storage math: out append value ["■"]
data modify storage math: out append value ["■"]

## 横の繰り返し呼び出し
execute if entity @e[distance=..0.01,tag=AiMath,limit=1] run function math:maze/teardown/width

## 縦幅分だけ繰り返し
execute positioned ~ ~1 ~ if entity @e[distance=..0.01,tag=AiMath,limit=1] run function math:maze/teardown/height
