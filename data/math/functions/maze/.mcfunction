### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

#> math:maze/
# 32x32部屋までの迷路を生成できます。
# エンティティを使用しているので、プレイヤーのいる場所からなど
# 読み込まれているチャンクから呼び出してください。
## 入力: サイズ => storage math: in[横, 縦]
## (未実装:入力: 形 => storage math: in[[・,・,・],[・,・,・],[・,・,・]])
## 出力: 乱数 => storage math: out

# 一時的なスコアボード
scoreboard objectives add AiMath dummy

## 縦/横での指定のときは最初の形を作る
execute unless data storage math: in[0][0] run function math:maze/reset/
## 入力が２次元配列なら迷路に代入しておく
#(未実装) execute if data storage math: in[0][0] run data modify storage math:_ maze set from storage math: in
## 最初の形が決まったらセットアップする
function math:maze/setup/
## クラスタリング
function math:maze/generate/
## アウトプットに設定する
function math:maze/teardown/

# スコアボード削除
kill @e[tag=AiMath]
scoreboard objectives remove AiMath
