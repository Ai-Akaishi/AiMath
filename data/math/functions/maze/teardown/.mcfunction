### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## 結果リセット
data modify storage math: out set value [[]]

## 縦の分繰り返し
execute align xyz positioned ~0.5 ~0.5 ~0.5 run function math:maze/teardown/height

## 最初をリセット
data modify storage math: out[0] set from storage math: out[-1]
