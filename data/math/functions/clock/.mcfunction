### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.

#> math:clock/
# 時計としてのデータを生成します。
## 入力: tick(int) => storage math: in
## 出力: 時計データ => storage math: out:{day:日数(int),hour:時間(int),minute:分(int),second:秒(int),sent:センチ秒(int),total_hour:トータル時間(int),total_minute:トータル分(int),total_second:トータル秒(int),total_sent:トータルセンチ秒(int)}

# 一時的なスコアボード
scoreboard objectives add AiMath dummy
data modify storage math: out set value {day:0,hour:0,minute:0,second:0,cent:0,total_hour:0,total_minute:0,total_second:0,total_cent:0}

# センチ秒取得
execute store result storage math: out.total_cent int 1 store result score 秒 AiMath run execute store result score センチ秒 AiMath run data get storage math: in 5
scoreboard players set _ AiMath 100
execute store result storage math: out.cent int 1 run scoreboard players operation センチ秒 AiMath %= _ AiMath
# 秒取得
execute store result storage math: out.total_second int 1 store result score 分 AiMath run scoreboard players operation 秒 AiMath /= _ AiMath
scoreboard players set _ AiMath 60
execute store result storage math: out.second int 1 run scoreboard players operation 秒 AiMath %= _ AiMath
# 分取得
execute store result storage math: out.total_minute int 1 store result score 時間 AiMath run scoreboard players operation 分 AiMath /= _ AiMath
scoreboard players set _ AiMath 60
execute store result storage math: out.minute int 1 run scoreboard players operation 分 AiMath %= _ AiMath
# 時間取得
execute store result storage math: out.total_hour int 1 store result score 日数 AiMath run scoreboard players operation 時間 AiMath /= _ AiMath
scoreboard players set _ AiMath 24
execute store result storage math: out.hour int 1 run scoreboard players operation 時間 AiMath %= _ AiMath
# 日数取得
execute store result storage math: out.day int 1 run scoreboard players operation 日数 AiMath /= _ AiMath

# スコアボード削除
scoreboard objectives remove AiMath
