#> math:motion/
# 速度１のMotionを取得します。角度は度数法で指定します。
# エンティティを使用しているので、プレイヤーのいる場所からなど
# 読み込まれているチャンクから呼び出してください。
## 入力: Rotation([float,float]) => storage math: in
## 出力: Motion([double,double,double]) => storage math: out
### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.

## 範囲外にテレポートしても、自分自身は取得できる、ただしkillは元の位置に戻ってから！
summon minecraft:marker ~ ~ ~ {Tags:[AiMath]}
execute as @e[distance=..0.01,type=marker,tag=AiMath,limit=1] at @s run function math:motion/get
