#> math:sin/
# sinを取得します。角度は度数法で指定します。
## 入力: 角度(int) => storage math: in
## 出力: sin(double) => storage math: out
### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.

# 値取得
function math:circular/common

# 値を返す
execute if data storage math:_ {over180:false} run data modify storage math: out set from storage math:table circular[-4][-4][-4][-4][0]
execute if data storage math:_ {over180:true} run data modify storage math: out set from storage math:table circular[-4][-4][-4][-4][1]
