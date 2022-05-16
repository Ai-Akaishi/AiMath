#> math:motion/get
# 速度１のMotionを取得します。角度は度数法で指定します。
## 入力: Rotation([float,float]) => storage math: in
## 出力: Motion([double,double,double]) => storage math: out
### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.

### 向きを代入
data modify entity @s Rotation set from storage math: in
### 原点に
execute positioned 0.0 0.0 0.0 rotated as @s positioned ^ ^ ^1 run tp @s ~ ~ ~
### Motion取得
data modify storage math: out set from entity @s Pos
### 読み込み範囲に戻ってkill
tp @s ~ ~ ~ ~ ~
kill @s
