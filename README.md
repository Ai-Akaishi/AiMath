# AiMath

Mathematics Functions Library Datapack  
数学関数ライブラリデータパック

## 動作確認済みバージョン / Verified minecraft versions

- 1.19
- 1.18.x
- 1.17.1

## 使い方 / How To Use

### 基本 / Basics

1. math: in に入力を設定します。  
data modify storage math: in set value (INPUT/入力)
2. 関数を呼びます。  
function #math:xxx
3. 結果が取得できます。  
data get storage math: out

### 関数の上書き / Override functions

関数は全て#math:xxxの形式でfunctionタグになっています。  
そのためこのデータパックのファイルを直接書き換えなくても、他のデータパックから挙動を上書きすることができます。  
All functions are defined as function tags in the form of #math:xxx.  
Therefore, you can overwrite the behavior from other datapacks without directly rewriting the files in this datapack.  

```json
#math:sinの挙動を変えたい場合  
When you want to override the behavior of #math:sin.  
  
math/tags/functions/sin.json  
{  
    "replace": true,  
    "values": [  
        "your_datapack:sin"  
    ]  
}
```

### 関数の追加 / Add functions

好きな関数をヘルプ(#math:help)に追加表示できます。  
You can add a new line of any function you like to the help(#math:help).  
  
```json
#math:your_functionのヘルプを追加したい場合  
If you want to add help for #math:your_function  

math/tags/functions/help/functions.json  
{  
    "replace": false,  
    "values": [  
        "your_datapack:help/your_function"  
    ]  
}
```

```nim
your_datapack/functions/help/your_function.mcfunction  
tellraw @s {"text":"function #math:your_function","underlined": true,"clickEvent": {"action": "run_command","value": "/function your_datapack:your_function/help"}}
```

## 現在標準で対応している関数一覧 / Default Supported Functions

1. sin
2. cos
3. tan
4. sqrt
5. random
6. dice
7. maze
8. clock
9. motion
10. sort/ascend sort/descend

### sin/cos/tan

sin/cos/tanを取得します。角度は度数法で指定します。  
入力(math: in) : 角度(int)  
出力(math: out): sin(double)

```nim
data modify storage math: in set value 30
function #math:sin
data get storage math: out
-> 0.5d
```

### sqrt

平方根を取得します。
入力は0.00000001(一億分の一)から100000000(一億)まで。結果は有効数字4桁です。  
入力(math: in) : 実数(double)  
出力(math: out): 平方根(double)

```nim
data modify storage math: in set value 0.05
function #math:sqrt
data get storage math: out
-> 0.22360000000000002d
```

### random

0 から 2147483647 までの乱数を生成します。  
入力(math: in) : なし(-)  
出力(math: out): 乱数(int)

```nim
function #math:random
data get storage math: out
-> 1195316795
```

### dice

サイコロを振った結果を返します。ダイスは1024面くらいまで推奨です。  
入力(math: in)      : N個のX面ダイス[N, X] / NdX ([int, int])  
出力(math: out.dice): それぞれの出目[出目1, 出目2, ...] / Numbers of dice rolls ([int, int, ...])  
出力(math: out.sum) : 合計値 / SUM (int)

```nim
data modify storage math: in set value [10,6]
function #math:dice
data get storage math: out
-> {dice: [4, 5, 1, 3, 5, 4, 3, 3, 1, 4], sum: 33}
```

### maze

32x32部屋までのクラスタリング迷路を生成します。  
一時的にエンティティを使用しているので、プレイヤーのいる場所からなど  
確実に読み込まれているチャンクから呼び出してください。  
入力(math: in)      : N部屋xM部屋の迷路[N, M] / NxM-room maze ([int, int])  
出力(math: out): 迷路 / Maze ([[■/□,...],...])  
(おまけ)math:maze/dump  
テスト用。変更可能性あり。迷路生成結果math:outをログに表示するだけです。

```nim
data modify storage math: in set value [4,3]
function #math:maze
data get storage math: out
-> [
["■", "■", "■", "■", "■", "■", "■", "■", "■"],
["■", "□", "□", "□", "□", "□", "□", "□", "■"],
["■", "■", "■", "■", "■", "□", "■", "■", "■"],
["■", "□", "□", "□", "□", "□", "■", "□", "■"],
["■", "□", "■", "■", "■", "□", "■", "□", "■"],
["■", "□", "□", "□", "■", "□", "□", "□", "■"],
["■", "■", "■", "■", "■", "■", "■", "■", "■"]
]
```

### clock

時計としてのデータを生成します。  
入力(math: in) : tick(int) => storage math: in  
出力(math: out): 時計データ => storage math: out:{day:日数(int),hour:時間(int),minute:分(int),second:秒(int),sent:センチ秒(int),  total_hour:トータル時間(int),total_minute:トータル分(int),total_second:トータル秒(int),total_sent:トータルセンチ秒(int)}

```nim
data modify storage math: in set value 1234567
function #math:clock
data get storage math: out
-> {day: 0, hour: 17, minute: 8, second: 48, cent: 35, total_hour: 17, total_minute: 1028, total_second: 61728, total_cent: 6172835}
```

### motion

速度１のMotionを取得します。角度は度数法で指定します。  
一時的にエンティティを使用しているので、プレイヤーのいる場所からなど  
確実に読み込まれているチャンクから呼び出してください。  
入力(math: in) : Rotation([float,float]) => storage math: in  
出力(math: out): Motion([double,double,double]) => storage math: out  

```nim
data modify storage math: in set value [-146.08746f, -14.09289f]
function #math:motion
data get storage math: out
-> [0.5410958528518677d, 0.24344515800476074d, -0.8049014210700989d]
```

### sort

与えられたリストを昇順or降順でソートします。  
並べかえられるリストは、byte型、short型、int型,weightを持つtag_compoundです。  
入力(math: in) : 並べ替えるリスト([(byte/short/int/{weight:int},..]) => storage math: in  
出力(math: out): 並べ替えたリスト([(byte/short/int/{weight:int},..]) => storage math: out  

```mcfunction
## For Integer List  
## Any type of integer EXCEPT LONG is OK  
data modify storage math: in set value [3,8,1,2,10,5,6,2,9,1,5,4,7]  
function #math:sort/ascend  
data get storage math: out  
# => [1, 1, 2, 2, 3, 4, 5, 5, 6, 7, 8, 9, 10]  
  
function #math:sort/descend  
data get storage math: out  
# => [10, 9, 8, 7, 6, 5, 5, 4, 3, 2, 2, 1, 1]  
  
  
## For Compound List  
## Compound needs to have weight.  
data modify storage math: in set value [{weight:3,value:"three"},{weight:8,value:"eight"},{weight:1,value:"one"},{weight:2,value:"two"},{weight:10,value:"ten"},{weight:5,value:"five"},{weight:6,value:"six"},{weight:2,value:"two"},{weight:9,value:"nine"},{weight:1,value:"one"},{weight:5,value:"five"},{weight:4,value:"four"},{weight:7,value:"seven"}]  
function #math:sort/ascend  
data get storage math: out  
# => [{weight: 1, value: "one"}, {weight: 1, value: "one"}, {weight: 2, value: "two"}, {weight: 2, value: "two"}, {weight: 3, value: "three"}, {weight: 4, value: "four"}, {weight: 5, value: "five"}, {weight: 5, value: "five"}, {weight: 6, value: "six"}, {weight: 7, value: "seven"}, {weight: 8, value: "eight"}, {weight: 9, value: "nine"}, {weight: 10, value: "ten"}]  
  
function #math:sort/descend  
data get storage math: out  
# => [{weight: 10, value: "ten"}, {weight: 9, value: "nine"}, {weight: 8, value: "eight"}, {weight: 7, value: "seven"}, {weight: 6, value: "six"}, {weight: 5, value: "five"}, {weight: 5, value: "five"}, {weight: 4, value: "four"}, {weight: 3, value: "three"}, {weight: 2, value: "two"}, {weight: 2, value: "two"}, {weight: 1, value: "one"}, {weight: 1, value: "one"}]
```

## 連絡はこちら / Contact

<https://twitter.com/AiAkaishi>

## ライセンス / LICENSE

These codes are released under the MIT License, see LICENSE.
