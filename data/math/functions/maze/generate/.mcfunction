### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## 残っている壁を１つ選んで確認する
execute align xyz as @e[dx=0,dy=32,dz=32,tag=AiMathCheck,sort=random,limit=1] at @s run function math:maze/generate/check

## 壁を壊さないといけない場合は壊す壁の前後で部屋番号を統一する
execute unless score From AiMath = To AiMath align xyz as @e[dx=0,dy=32,dz=32,tag=AiMath] if score @s AiMath = From AiMath run scoreboard players operation @s AiMath = To AiMath

## To AiMath になってないのがあれば繰り返し
execute align xyz as @e[dx=0,dy=32,dz=32,tag=AiMath] unless score @s AiMath = To AiMath run scoreboard players set To AiMath -1
execute if score To AiMath matches -1 run function math:maze/generate/
