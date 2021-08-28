### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.

#> math:cos/
# cosを取得します。角度は度数法で指定します。
## 入力: 角度(int) => storage math: in
## 出力: cos(double) => storage math: out

# 一時的なスコアボード
scoreboard objectives add _ dummy

# 値取得
function math:circular/common

# 値を返す
execute if score Angle360 _ matches ..180 run data modify storage math: out set from storage math:table circular[-4][-4][-4][-4][2]
execute if score Angle360 _ matches 181.. run data modify storage math: out set from storage math:table circular[-4][-4][-4][-4][3]

# スコアボード削除
scoreboard objectives remove _
