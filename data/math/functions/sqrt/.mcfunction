### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.

#> math:sqrt/
# 平方根を求めます。入力は 0.00000001 から 100000000 まで。結果は有効数字4桁です。
## 入力: 実数(double) => storage math: in
## 出力: 平方根(double) => storage math: out

# 一時的なスコアボード
scoreboard objectives add _ dummy

# 設定されない可能性のある値を初期化
scoreboard players set R _ -1
data modify storage math: out set value 0f

# 入力に応じてスケール変更
execute store result score V _ run data get storage math: in 1
execute if score V _ matches ..999999 store result score V _ run data get storage math: in 100
execute if score V _ matches ..999999 store result score V _ run data get storage math: in 10000
execute if score V _ matches ..999999 store result score V _ run data get storage math: in 1000000
execute if score V _ matches ..999999 store result score V _ run data get storage math: in 100000000
execute if score V _ matches ..999999 store result score V _ run data get storage math: in 10000000000
execute if score V _ matches ..999999 store result score V _ run data get storage math: in 1000000000000
execute if score V _ matches ..999999 store result score V _ run data get storage math: in 100000000000000
execute if score V _ matches ..999999 store result score V _ run data get storage math: in 10000000000000000

# 値に応じて1000の位設定
execute if score V _ matches 1000000.. run scoreboard players set R _ -1000
execute if score V _ matches 4000000.. run scoreboard players set R _ -2000
execute if score V _ matches 9000000.. run scoreboard players set R _ -3000
execute if score V _ matches 16000000.. run scoreboard players set R _ -4000
execute if score V _ matches 25000000.. run scoreboard players set R _ -5000
execute if score V _ matches 36000000.. run scoreboard players set R _ -6000
execute if score V _ matches 49000000.. run scoreboard players set R _ -7000
execute if score V _ matches 64000000.. run scoreboard players set R _ -8000
execute if score V _ matches 81000000.. run scoreboard players set R _ -9000

# 100の位を計算
scoreboard players operation _ _ = R _
scoreboard players operation _ _ *= R _
scoreboard players operation _ _ -= V _
execute store result storage math:_ _ int 0.005 run scoreboard players operation _ _ /= R _
execute store result score _ _ run data get storage math:_ _ 100
execute store result score R2 _ run scoreboard players operation R _ -= _ _
# 予定より大きければ100引く
scoreboard players operation R2 _ *= R _
execute if score R2 _ > V _ run scoreboard players add R _ 100

# 10の位を計算
scoreboard players operation _ _ = R _
scoreboard players operation _ _ *= R _
scoreboard players operation _ _ -= V _
execute store result storage math:_ _ int 0.05 run scoreboard players operation _ _ /= R _
execute store result score _ _ run data get storage math:_ _ 10
execute store result score R2 _ run scoreboard players operation R _ -= _ _
# 予定より大きければ10引く
scoreboard players operation R2 _ *= R _
execute if score R2 _ > V _ run scoreboard players add R _ 10

# 1の位を計算
scoreboard players operation _ _ = R _
scoreboard players operation _ _ *= R _
scoreboard players operation _ _ -= V _
execute store result storage math:_ _ int 0.5 run scoreboard players operation _ _ /= R _
execute store result score _ _ run data get storage math:_ _ 1
execute store result score R2 _ run scoreboard players operation R _ -= _ _
# 予定より大きければ1引く
scoreboard players operation R2 _ *= R _
execute if score R2 _ > V _ run scoreboard players add R _ 1

# 入力に応じてスケール変更
execute store result score V _ run data get storage math: in 1
execute if score V _ matches 1000000..100000000 store result storage math: out double -1 run scoreboard players get R _
execute if score V _ matches 10000..999999 store result storage math: out double -0.1 run scoreboard players get R _
execute if score V _ matches 100..9999 store result storage math: out double -0.01 run scoreboard players get R _
execute if score V _ matches 1..99 store result storage math: out double -0.001 run scoreboard players get R _

execute store result score V _ run data get storage math: in 100000000
execute if score V _ matches 1000000..100000000 store result storage math: out double -0.0001 run scoreboard players get R _
execute if score V _ matches 10000..999999 store result storage math: out double -0.00001 run scoreboard players get R _
execute if score V _ matches 100..9999 store result storage math: out double -0.000001 run scoreboard players get R _
execute if score V _ matches 1..99 store result storage math: out double -0.0000001 run scoreboard players get R _

# スコアボード削除
scoreboard objectives remove _
