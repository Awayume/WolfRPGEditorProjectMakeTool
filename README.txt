WolfRPGエディタープロジェクト作成ツール Ver2.0

1. 添付
WolfRPGEditorProjectMakeTool_v2.0.exe
README.txt

2. 使い方
下記のようなファイル構成にして、
WolfRPGEditorProjectMakeTool_v2.0.exeを実行するだけです。

3. 注意点
①WolfRPGエディターにのみ対応しています。
②途中で、Unzip.vbsを生成しますが、そのファイルがWindowsSecurityに
　脅威として検出される可能性があります。
　そのファイルがないと正常に動作しないため、許可するようにしてください。


正しい構成の場合、このようになっているはずです。
(余分なファイルがあっても構いません。)

│  Config.exe
│  Editor.exe
│  Editor.ini
│  EditorGraphic.dat
│  Game.exe
│  Game.ini
│  GdiPlus.dll
│  GuruGuruSMF4.dll
│  WolfRPGEditorProjectSetupTool.exe
│  
├─Data
│  ├─BasicData
│  │  │  略
│  │  │  
│  │  ├─AutoBackup1
│  │  │      略
│  │  │      
│  │  ├─AutoBackup2
│  │  │      略
│  │  │      
│  │  └─AutoBackup3
│  │          略
│  │          
│  ├─BattleEffect
│  │      略
│  │      
│  ├─BGM
│  │      略
│  │      
│  ├─CharaChip
│  │      略
│  │      
│  ├─EnemyGraphic
│  │      略
│  │      
│  ├─Fog_BackGround
│  │      略
│  │      
│  ├─MapChip
│  │      略
│  │      
│  ├─MapData
│  │      略
│  │      
│  ├─Picture
│  │      略
│  │      
│  ├─SE
│  │      略
│  │      
│  └─SystemFile
│          略
│          
└─データ集
    │  グラフィック合成器.zip
    │  バージョン1素材集.zip
    │  
    ├─（完全初期状態データ）
    │  │  完全初期状態データについて.txt
    │  │  
    │  └─Data
    │      ├─BasicData
    │      │      略
    │      │      
    │      ├─BGM
    │      ├─CharaChip
    │      ├─EnemyGraphic
    │      ├─MapChip
    │      │      略
    │      │      
    │      ├─MapData
    │      ├─Picture
    │      ├─SE
    │      └─SystemGraphic
    │              略
    │              
    └─（空データ[基本システム入り]）
        │  空データ（基本システム入り）について.txt
        │  
        └─Data
            ├─BasicData
            │      略
            │      
            ├─BattleEffect
            │      略
            │      
            ├─BGM
            ├─CharaChip
            │      略
            │      
            ├─EnemyGraphic
            ├─MapChip
            │      略
            │      
            ├─MapData
            ├─Picture
            ├─SE
            └─SystemFile
                    略
