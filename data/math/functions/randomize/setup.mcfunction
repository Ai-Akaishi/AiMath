#> math:randomize/setup
# ランダムな数字を割り当ててあげる
### Copyright © 2021 赤石愛

## ランダムに数字を割り当てながらセットしていく
data modify storage math: in append value {weight:0}
data modify storage math: in[-1].data set from storage math:_ _[-1]
function math:random/inner
data modify storage math: in[-1].weight set from storage math:_ random

## まだ数が残ってたら繰り返し
data remove storage math:_ _[-1]
execute if data storage math:_ _[-1] run function math:randomize/setup
