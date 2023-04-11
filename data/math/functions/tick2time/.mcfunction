#> math:tick2time/
# tick値を(h:)mm:ss.cc形式にします。
## 入力: tick(int) => storage math: in
## 出力: 時間データ([string,...]) => storage math: out
### Copyright © 2023 赤石愛
### This software is released under the MIT License, see LICENSE.

## 結果リセット
data modify storage math: out set value []

# 一時的なスコアボード
scoreboard objectives add AiMath dummy
# 負数処理
execute store result score _ AiMath run data get storage math: in
execute if score _ AiMath matches ..-1 run scoreboard players set _ AiMath 0
execute store result storage math:_ in int 1 run scoreboard players get _ AiMath
# 時間
execute store result storage math:_ _ int 0.0000138889 run data get storage math:_ in
execute unless data storage math:_ {_:0} run data modify storage math: out append string storage math:_ _
execute if data storage math: out[0] run data modify storage math: out append value ":"
# 分
execute store result storage math:_ _ int 0.00083333334 run data get storage math:_ in
execute store result score _ AiMath run data get storage math:_ _
scoreboard players set __ AiMath 60
scoreboard players operation _ AiMath %= __ AiMath
execute store result storage math:_ _ int 1 run scoreboard players add _ AiMath 100
data modify storage math: out append string storage math:_ _ 1 3
data modify storage math: out append value ":"
# 秒.ミリ秒
execute store result storage math:_ _ int 5 run data get storage math:_ in
execute store result score _ AiMath run data get storage math:_ _
scoreboard players set __ AiMath 6000
scoreboard players operation _ AiMath %= __ AiMath
execute store result storage math:_ _ int 1 run scoreboard players add _ AiMath 10000
data modify storage math: out append string storage math:_ _ 1 3
data modify storage math: out append value "."
data modify storage math: out append string storage math:_ _ 3 5

# スコアボード削除
scoreboard players reset _ AiMath
scoreboard players reset __ AiMath
scoreboard objectives remove AiMath
