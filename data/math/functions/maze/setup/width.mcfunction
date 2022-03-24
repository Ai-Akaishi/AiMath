### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## 計算用のエンティティを出す
## 横向きのやつ
execute if data storage math:_ maze[-1][1] run summon minecraft:marker ~ ~ ~ {NoGravity:true,Rotation:[0f,0f],Tags:[AiMath,AiMathCheck,AiMathHorizontal,AiMathWall]}
## 上向きのやつ
execute if data storage math:_ maze[1][-1] run summon minecraft:marker ~ ~ ~ {NoGravity:true,Rotation:[0f,-90f],Tags:[AiMath,AiMathCheck,AiMathVertical,AiMathWall]}
## 最後のやつ
execute unless data storage math:_ maze[-1][1] unless data storage math:_ maze[1][-1] run summon minecraft:marker ~ ~ ~ {NoGravity:true,Rotation:[0f,-45f],Tags:[AiMath]}
## お部屋番号を入れる
scoreboard players add Id AiMath 1
scoreboard players operation @e[distance=..0.01,tag=AiMath] AiMath = Id AiMath

## 繰り返し
data remove storage math:_ maze[-1][-1]
execute if data storage math:_ maze[-1][-1] positioned ~ ~ ~1 run function math:maze/setup/width
