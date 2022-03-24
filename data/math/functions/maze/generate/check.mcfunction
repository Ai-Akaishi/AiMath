### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## 壁を壊せるか確認する

## 自分の番号は残しておく
scoreboard players operation From AiMath = @s AiMath
## 壁の先の部屋の番号を取得
execute if entity @s[tag=AiMathVertical] positioned ~ ~1 ~ run scoreboard players operation To AiMath = @e[distance=..0.01,tag=AiMath,limit=1] AiMath
execute if entity @s[tag=AiMathHorizontal] positioned ~ ~ ~1 run scoreboard players operation To AiMath = @e[distance=..0.01,tag=AiMath,limit=1] AiMath
# tellraw @p [{"score":{"name":"From","objective": "AiMath"}}," ",{"score":{"name":"To","objective": "AiMath"}}," ",{"score":{"name":"@s","objective": "AiMath"}}]

## 部屋番号が違うなら壁は残さない
## [AiMath,AiMathCheck] => [AiMath]
execute unless score To AiMath = From AiMath run tag @s remove AiMathWall
## 壁の奥と部屋番号が同じなら壁は残す
## [AiMath,AiMathCheck] => [AiMath,AiMathWall]
tag @s remove AiMathCheck
