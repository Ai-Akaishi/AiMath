### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.

#> math:help/motion
# #math:motionのヘルプを表示します。

tellraw @s {"translate":" === function #math:%s ===","color":"aqua","with":["motion"]}
tellraw @s "速度１のMotionを取得します。角度は度数法で指定します。"
tellraw @s "一時的にエンティティを使用しているので、プレイヤーのいる場所からなど"
tellraw @s "確実に読み込まれているチャンクから呼び出してください。"
tellraw @s {"translate":"入力%1$s: %2$s%3$s","with":[{"text":"(math: in)  ","color":"gray"},{"text":"向き(Rotation)","bold":true},{"text":"([float,float])","color":"gray"}]}
tellraw @s {"translate":"出力%1$s: %2$s%3$s","with":[{"text":"(math: out)","color":"gray"},{"text":"移動量(Motion)","bold":true},{"text":"([double,double,double])","color":"gray"}]}
