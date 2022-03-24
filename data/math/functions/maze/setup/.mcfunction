### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## サイズ指定だった時の処理

## お部屋の番号リセット
scoreboard players set Id AiMath 0

## 縦の分繰り返し
execute if data storage math:_ maze[0][0] align xyz positioned ~0.5 ~0.5 ~0.5 run function math:maze/setup/height
