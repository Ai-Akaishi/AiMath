#> math:split_number/loop
# 数字の各桁を記録。
### Copyright © 2021 赤石愛

scoreboard players operation _ AiMath = Dived AiMath
data modify storage math: out prepend value 0
execute store result storage math: out[0] int 1 run scoreboard players operation _ AiMath %= 10 AiMath
scoreboard players operation Dived AiMath /= 10 AiMath

execute if score Dived AiMath matches 1.. run function math:split_number/loop
