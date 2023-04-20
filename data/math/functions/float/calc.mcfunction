#> math:float/calc
# フロート演算します。いろいろ。
### Copyright © 2023 赤石愛
### This software is released under the MIT License, see LICENSE.

## displayを使ったfloat計算で気を付ける点
# add / sub
# 結果が絶対値で出るので、あとで符号(正負)を調整する
# mul / div / inv
# 0除算しないように気を付ける

## 足し算と引き算をする
data modify storage math:_ matrix set value [1f, 0f, 0f, 0f, 0f, 1f, 0f, 0f, 0f, 0f, 1f, 0f, 0f, 0f, 0f, -1f]
data modify storage math:_ matrix[0] set from storage math:_ in.y
data modify storage math:_ matrix[1] set from storage math:_ in.x
data modify storage math:_ matrix[4] set from storage math:_ in.x
data modify storage math:_ matrix[5] set from storage math:_ in.y
## 負数を計算する
data modify storage math:_ matrix[3] set from storage math:_ in.x
data modify storage math:_ matrix[7] set from storage math:_ in.y

data modify entity @s transformation set from storage math:_ matrix
data modify storage math:_ transformation set from entity @s transformation

## 負数が分かったので、記録する
data modify storage math: out.neg set from storage math:_ transformation.translation[0]
## とりあえず和と差を記録する
data modify storage math: out.add set from storage math:_ transformation.scale[0]
data modify storage math: out.sub set from storage math:_ transformation.scale[1]

## 計算結果から符号を推測する
data modify storage math:_ flag set value {}
data modify storage math:_ flag.abs set string storage math:_ transformation.scale[2] 0 1
data modify storage math:_ flag.x set string storage math:_ in.x 0 1
data modify storage math:_ flag.y set string storage math:_ in.y 0 1
execute unless data storage math:_ flag{abs:"-"} run data modify storage math:_ flag.abs set value "+"
execute unless data storage math:_ flag{x:"-"} run data modify storage math:_ flag.x set value "+"
execute unless data storage math:_ flag{y:"-"} run data modify storage math:_ flag.y set value "+"
## 符号の反転が必要なら反転処理
execute unless data storage math:_ flag{abs:"+",x:"+"} run function math:float/inv

## 割り算
data modify storage math:_ matrix set value [1f, 0f, 0f, 0f, 0f, 1f, 0f, 0f, 0f, 0f, 1f, 0f, 0f, 0f, 0f, 1f]
data modify storage math:_ matrix[3] set from storage math:_ in.x
data modify storage math:_ matrix[15] set from storage math:_ in.y
data modify entity @s transformation set from storage math:_ matrix
data modify storage math:_ transformation set from entity @s transformation
data modify storage math: out.div set from storage math:_ transformation.translation[0]

## 逆数
data modify storage math:_ matrix set value [1f, 0f, 0f, 1f, 0f, 1f, 0f, 0f, 0f, 0f, 1f, 0f, 0f, 0f, 0f, 1f]
data modify storage math:_ matrix[15] set from storage math:_ in.x
data modify entity @s transformation set from storage math:_ matrix
data modify storage math:_ transformation set from entity @s transformation
data modify storage math: out.inv set from storage math:_ transformation.translation[0]

## 掛け算
data modify storage math:_ matrix set value [1f, 0f, 0f, 0f, 0f, 1f, 0f, 0f, 0f, 0f, 1f, 0f, 0f, 0f, 0f, 1f]
data modify storage math:_ matrix[3] set from storage math:_ in.y
data modify storage math:_ matrix[15] set from storage math: out.inv
data modify entity @s transformation set from storage math:_ matrix
data modify storage math:_ transformation set from entity @s transformation
data modify storage math: out.mul set from storage math:_ transformation.translation[0]

data modify storage math:_ flag.zero set string storage math:_ in.x 0 1
execute if data storage math:_ flag{zero:"0"} run data modify storage math: out.mul set value 0f

kill @s
