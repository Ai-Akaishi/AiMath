# AiMath

Mathematics Functions Library Datapack  
数学関数ライブラリデータパック

## 動作確認済みバージョン / Verified minecraft versions

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

## 連絡はこちら / Contact

<https://twitter.com/AiAkaishi>

## ライセンス / LICENSE

These codes are released under the MIT License, see LICENSE.
