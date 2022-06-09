#> math:sort/ascend/
# リストを昇順にソートします。
## 入力: 並び替えるもの([(byte/short/int/{weight:int},..]) => storage math: in
## 出力: 並び替えたもの([(byte/short/int/{weight:int},..]) => storage math: out
### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.

# 一時的なスコアボード
scoreboard objectives add AiMath dummy

## compound(でweight持ち)なら
execute if data storage math: in[0].weight run function math:sort/compound/ascend/
## それ以外はリストとして
execute unless data storage math: in[0].weight run function math:sort/number/ascend/

# スコアボード削除
scoreboard players reset _1 AiMath
scoreboard players reset _2 AiMath
scoreboard objectives remove AiMath
