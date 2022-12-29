#> math:split_number/
# 数字を各桁に分割します。
## 入力: 整数(int) => storage math: in
## 出力: 各桁のリスト([int,..]) => storage math: out
### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.

# 結果をリセット
data modify storage math: out set value []

# 一時的なスコアボード
scoreboard objectives add AiMath dummy
execute store result score Dived AiMath run data get storage math: in

# よく使うので10は定義
scoreboard players set 10 AiMath 10

# 符号を記録
execute store result score Sign AiMath if score Dived AiMath matches 0..
# もし入力がマイナスならプラスにする
scoreboard players set Div AiMath -1
execute unless score Sign AiMath matches 1.. run scoreboard players operation Dived AiMath *= Div AiMath

# 各桁の分割
function math:split_number/loop

# 符号がマイナスなら最初の数字をマイナスにする
execute unless score Sign AiMath matches 1.. store result storage math: out[0] int -1 run data get storage math: out[0]

# INT最小値の(符号反転ができない)場合
execute if data storage math: {in:-2147483648} run data modify storage math: out set value [-2,1,4,7,4,8,3,6,4,8]
# 0
execute if data storage math: {in:0} run data modify storage math: out set value [0]

# 最後にスコアボード削除
scoreboard players reset * AiMath
scoreboard objectives remove AiMath
