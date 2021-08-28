### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.

#> math:circular/common
# 角度に合わせて三角関数テーブルを引きます。

# 角度取得
execute store result score Angle _ run data get storage math: in 1
# 360未満に補正
scoreboard players set _ _ 360
execute store result score Angle360 _ run scoreboard players operation Angle _ %= _ _

# 180以上なら180引く
execute if score Angle _ matches 180.. run scoreboard players remove Angle _ 180

# 取得したい角度が変化していれば検索
execute store result score _ _ run data get storage math:_ angle 1
execute unless score _ _ = Angle _ run function math:circular/shift_table
