#> math:circular/common
# 角度に合わせて三角関数テーブルを引きます。
### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.

# 一時的なスコアボード
scoreboard objectives add AiMath dummy

# 角度取得
execute store result score Angle AiMath run data get storage math: in 1
# 360未満に補正
scoreboard players set _ AiMath 360
execute store result storage math:_ over180 byte 0.005555556 run scoreboard players operation Angle AiMath %= _ AiMath

# 180以上なら180引く
execute if score Angle AiMath matches 180.. run scoreboard players remove Angle AiMath 180

# 取得したい角度が変化していれば検索
execute store result score _ AiMath run data get storage math:_ angle 1
execute unless score _ AiMath = Angle AiMath run function math:circular/shift_table

# スコアボード削除
scoreboard players reset Angle AiMath
scoreboard objectives remove AiMath
