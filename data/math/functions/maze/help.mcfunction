### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.

#> math:help/maze
# #math:mazeのヘルプを表示します。

tellraw @s {"translate":" === function #math:%s ===","color":"aqua","with":["maze"]}
tellraw @s "32x32部屋までのクラスタリング迷路を生成します。"
tellraw @s "一時的にエンティティを使用しているので、プレイヤーのいる場所からなど"
tellraw @s "確実に読み込まれているチャンクから呼び出してください。"
tellraw @s {"translate":"入力%1$s: %2$s%3$s","with":[{"text":"(math: in)       ","color":"gray"},{"text":"N部屋xM部屋の迷路[N,M]","bold":true},{"text":"([int, int])","color":"gray"}]}
tellraw @s {"translate":"出力%1$s: %2$s%3$s","with":[{"text":"(math: out)","color":"gray"},{"text":"迷路","bold":true},{"text":"([[■/□,...],...])","color":"gray"}]}
tellraw @s {"translate":" === function math:%s ===","color":"white","with":["maze/dump"]}
tellraw @s [{"text":"(テスト用/変更可能性あり)結果をログに表示するだけのファンクション "}]
