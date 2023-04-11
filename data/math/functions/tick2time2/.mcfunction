#> math:tick2time2/
# tick値を(h:)mm:ss形式にします。(端数切り上げ)
## 入力: tick(int) => storage math: in
## 出力: 時間データ([string,...]) => storage math: out
### Copyright © 2023 赤石愛
### This software is released under the MIT License, see LICENSE.

## 結果リセット
data modify storage math: out set value []

# 一時的なスコアボード
scoreboard objectives add AiMath dummy
# 切り上げ処理
execute store result score _ AiMath run data get storage math: in
execute store result storage math:_ in int 1 run scoreboard players add _ AiMath 19
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
# 秒
execute store result storage math:_ _ int 0.0500000001 run data get storage math:_ in
execute store result score _ AiMath run data get storage math:_ _
scoreboard players set __ AiMath 60
scoreboard players operation _ AiMath %= __ AiMath
execute store result storage math:_ _ int 1 run scoreboard players add _ AiMath 100
data modify storage math: out append string storage math:_ _ 1 3

# スコアボード削除
scoreboard players reset _ AiMath
scoreboard players reset __ AiMath
scoreboard objectives remove AiMath
