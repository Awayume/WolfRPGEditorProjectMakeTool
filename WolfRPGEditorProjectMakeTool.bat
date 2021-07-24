@echo off
setlocal
cd /d %~dp0
echo ===========================================
echo WolfRPGEditorプロジェクトセットアップツール
echo ===========================================
echo.
rem 設定ファイルの確認　なければSettingsへ
>nul 2>&1 type WolfRPGEditorProjectSetupTool.ini
if %errorlevel% neq 0 (
  goto Settings
)
:Check
rem ファイルチェック
for /f "usebackq delims=" %%A in (`type WolfRPGEditorProjectSetupTool.ini`) do set ProjectsDir=%%A
for /f "usebackq delims=" %%A in (`echo %ProjectsDir:~5%`) do set ProjectsDir=%%A
if not exist %ProjectsDir% goto MakeDir
if not exist Unzip.vbs (
  >>Unzip.vbs echo Option Explicit
  >>Unzip.vbs echo dim objShell, objWshShell, objFolder, ZipFile, i
  >>Unzip.vbs echo.
  >>Unzip.vbs echo if WScript.Arguments.Count ^< 1 or WScript.Arguments.Count ^> 2 then
  >>Unzip.vbs echo WScript.Echo "Usage: CScript.exe UnZip.VBS ZIPFile ^[objFolder^]"
  >>Unzip.vbs echo WScript.Quit
  >>Unzip.vbs echo end if
  >>Unzip.vbs echo.
  >>Unzip.vbs echo Set objShell = CreateObject^("shell.application"^)
  >>Unzip.vbs echo Set objWshShell = WScript.CreateObject^("WScript.Shell"^)
  >>Unzip.vbs echo Set ZipFile = objShell.NameSpace ^(WScript.Arguments^(0^)^).items
  >>Unzip.vbs echo if WScript.Arguments.Count = 2 then
  >>Unzip.vbs echo Set objFolder = objShell.NameSpace ^(WScript.Arguments^(1^)^) '指定された解凍先フォルダ
  >>Unzip.vbs echo else
  >>Unzip.vbs echo Set objFolder = objShell.NameSpace ^(objWshShell.CurrentDirectory^) '省略時はカレントディレクトリへ
  >>Unzip.vbs echo end if
  >>Unzip.vbs echo.
  >>Unzip.vbs echo objFolder.CopyHere ZipFile, ^&H14 '進行状況ダイアログボックス非表示 + ダイアログボックスは[すべてはい]
)
if not exist Data (
  set NotFound=Data
  goto File404
)
if not exist Config.exe (
  set NotFound=Config.exe
  goto File404
)
if not exist Editor.ini (
  set NotFound=Editor.ini
  goto File404
)
if not exist Game.exe (
  set NotFound=Game.exe
  goto File404
)
if not exist GdiPlus.dll (
  set NotFound=GdiPlus.exe
  goto File404
)
if not exist データ集 (
  set NotFound=データ集
  goto File404
)
if not exist Editor.exe (
  set NotFound=Editor.exe
  goto File404
)
if not exist EditorGraphic.dat (
  set NotFound=EditorGraphic.dat
  goto File404
)
if not exist Game.ini (
  set NotFound=Game.ini
  goto File404
)
if not exist GuruGuruSMF4.dll (
  set NotFound=GuruGuruSMF4.dll
  goto File404
)
if not exist データ集\グラフィック合成器.zip (
  set NotFound=データ集\グラフィック合成器.zip
  goto File404
)
if not exist データ集\バージョン1素材集.zip (
  set NotFound=データ集\バージョン1素材集.zip
  goto File404
)
if not exist データ集\（完全初期状態データ） (
  set NotFound=データ集\（完全初期状態データ）
  goto File404
)
if not exist データ集\（空データ[基本システム入り]） (
  set NotFound=データ集\（空データ[基本システム入り]）
  goto File404
)
if not exist データ集\（完全初期状態データ）\Data (
  set NotFound=データ集\（完全初期状態データ）\Data
  goto File404
)
if not exist データ集\（完全初期状態データ）\Data\BasicData (
  set NotFound=データ集\（完全初期状態データ）\Data\BasicData
  goto File404
)
if not exist データ集\（完全初期状態データ）\Data\BGM (
  set NotFound=データ集\（完全初期状態データ）\Data\BGM
  goto File404
)
if not exist データ集\（完全初期状態データ）\Data\CharaChip (
  set NotFound=データ集\（完全初期状態データ）\Data\CharaChip
  goto File404
)
if not exist データ集\（完全初期状態データ）\Data\EnemyGraphic (
  set NotFound=データ集\（完全初期状態データ）\Data\EnemyGraphic
  goto File404
)
if not exist データ集\（完全初期状態データ）\Data\MapChip (
  set NotFound=データ集\（完全初期状態データ）\Data\MapChip
  goto File404
)
if not exist データ集\（完全初期状態データ）\Data\MapData (
  set NotFound=データ集\（完全初期状態データ）\Data\MapData
  goto File404
)
if not exist データ集\（完全初期状態データ）\Data\Picture (
  set NotFound=データ集\（完全初期状態データ）\Data\Picture
  goto File404
)
if not exist データ集\（完全初期状態データ）\Data\SE (
  set NotFound=データ集\（完全初期状態データ）\Data\SE
  goto File404
)
if not exist データ集\（完全初期状態データ）\Data\SystemGraphic (
  set NotFound=データ集\（完全初期状態データ）\Data\SystemGraphic
  goto File404
)
if not exist データ集\（空データ[基本システム入り]）\Data (
  set NotFound=データ集\（空データ[基本システム入り]）\Data
  goto File404
)
if not exist データ集\（空データ[基本システム入り]）\Data\BasicData (
  set NotFound=データ集\（空データ[基本システム入り]）\Data\BasicData
  goto File404
)
if not exist データ集\（空データ[基本システム入り]）\Data\BattleEffect (
  set NotFound=データ集\（空データ[基本システム入り]）\Data\BattleEffect
  goto File404
)
if not exist データ集\（空データ[基本システム入り]）\Data\BGM (
  set NotFound=データ集\（空データ[基本システム入り]）\Data\BGM
  goto File404
)
if not exist データ集\（空データ[基本システム入り]）\Data\CharaChip (
  set NotFound=データ集\（空データ[基本システム入り]）\Data\CharaChip
  goto File404
)
if not exist データ集\（空データ[基本システム入り]）\Data\EnemyGraphic (
  set NotFound=データ集\（空データ[基本システム入り]）\Data\EnemyGraphic
  goto File404
)
if not exist データ集\（空データ[基本システム入り]）\Data\MapChip (
  set NotFound=データ集\（空データ[基本システム入り]）\Data\MapChip
  goto File404
)
if not exist データ集\（空データ[基本システム入り]）\Data\MapData (
  set NotFound=データ集\（空データ[基本システム入り]）\Data\MapData
  goto File404
)
if not exist データ集\（空データ[基本システム入り]）\Data\Picture (
  set NotFound=データ集\（空データ[基本システム入り]）\Data\Picture
  goto File404
)
if not exist データ集\（空データ[基本システム入り]）\Data\SE (
  set NotFound=データ集\（空データ[基本システム入り]）\Data\SE
  goto File404
)
if not exist データ集\（空データ[基本システム入り]）\Data\SystemFile (
  set NotFound=データ集\（空データ[基本システム入り]）\Data\SystemFile
  goto File404
)

rem メインメニュー
:Menu
echo 構成をメニューから選択してください。
echo 1. 基本システムなし
echo 2. 基本システムあり
echo 3. 終了
echo.
set /p Constitution="該当する構成の番号を入力してください："
if "%Constitution%" == "1" (
  echo.
  goto NoSystem
) else if "%Constitution%" == "2" (
  echo.
  goto IncludeSystem
) else if "%Constitution%" == "3" (
  echo.
  goto Finish
) else (
  echo.
  echo ####################
  echo Error:Invalid State.
  echo ####################
  >nul timeout 2
  echo.
  goto Menu
)

:Settings
echo 初期設定を開始します。
echo.
set /p ProjectsDir="プロジェクトを作成するディレクトリをフルパスで入力してください："
>>WolfRPGEditorProjectSetupTool.ini echo [ProjectsDir]
>>WolfRPGEditorProjectSetupTool.ini echo Path=%ProjectsDir%
echo.
>nul timeout 1
echo 初期設定が完了しました。
echo.
goto Check

:MakeDir
mkdir %ProjectsDir%
goto Check
:File404
echo %CD%\%NotFound%が見つかりません。
echo このツールの置き場所が正しいか、WolfRPGEditorのファイルが不足していないかを確認してください。
>nul timeout 5
exit

:NoSystem
echo プロジェクトの作成を開始します。
echo.
set /p ProjectName="プロジェクトの名前を入力してください："
echo.
echo 作成中です...
mkdir %ProjectsDir%\%ProjectName%
mkdir %ProjectsDir%\%ProjectName%\Data
>nul xcopy /t /e データ集\（完全初期状態データ）\Data %ProjectsDir%\%ProjectName%\Data
>nul copy データ集\（完全初期状態データ）\Data\BasicData %ProjectsDir%\%ProjectName%\Data\BasicData
>nul copy データ集\（完全初期状態データ）\Data\MapChip %ProjectsDir%\%ProjectName%\Data\MapChip
>nul copy データ集\（完全初期状態データ）\Data\SystemGraphic %ProjectsDir%\%ProjectName%\Data\SystemGraphic
>nul copy Config.exe %ProjectsDir%\%ProjectName%
>nul copy Editor.ini %ProjectsDir%\%ProjectName%
>nul copy Game.exe %ProjectsDir%\%ProjectName%
>nul copy GdiPlus.dll %ProjectsDir%\%ProjectName%
>nul copy Editor.exe %ProjectsDir%\%ProjectName%
>nul copy EditorGraphic.dat %ProjectsDir%\%ProjectName%
>nul copy Game.ini %ProjectsDir%\%ProjectName%
>nul copy GuruGuruSMF4.dll %ProjectsDir%\%ProjectName%
mkdir %ProjectsDir%\%ProjectName%\Tools
mkdir %ProjectsDir%\%ProjectName%\Assets
>nul copy データ集\グラフィック合成器.zip %ProjectsDir%\%ProjectName%\Tools
>nul CScript.exe Unzip.vbs %CD%\データ集\バージョン1素材集.zip %ProjectsDir%\%ProjectName%\Assets
echo.
echo プロジェクトの作成が完了しました。
echo.
>nul timeout 1
goto Finish

:IncludeSystem
echo プロジェクトの作成を開始します。
echo.
set /p ProjectName="プロジェクトの名前を入力してください："
echo.
>nul timeout 1
echo 作成中です...
mkdir %ProjectsDir%\%ProjectName%
mkdir %ProjectsDir%\%ProjectName%\Data
>nul xcopy /t /e データ集\（空データ[基本システム入り]）\Data %ProjectsDir%\%ProjectName%\Data
>nul copy データ集\（空データ[基本システム入り]）\Data\BasicData %ProjectsDir%\%ProjectName%\Data\BasicData
>nul copy データ集\（空データ[基本システム入り]）\Data\MapChip %ProjectsDir%\%ProjectName%\Data\MapChip
>nul copy データ集\（空データ[基本システム入り]）\Data\SystemFile %ProjectsDir%\%ProjectName%\Data\SystemFile
>nul copy データ集\（空データ[基本システム入り]）\Data\BattleEffect %ProjectsDir%\%ProjectName%\Data\BattleEffect
>nul copy データ集\（空データ[基本システム入り]）\Data\CharaChip %ProjectsDir%\%ProjectName%\Data\CharaChip
>nul copy Config.exe %ProjectsDir%\%ProjectName%
>nul copy Editor.ini %ProjectsDir%\%ProjectName%
>nul copy Game.exe %ProjectsDir%\%ProjectName%
>nul copy GdiPlus.dll %ProjectsDir%\%ProjectName%
>nul copy Editor.exe %ProjectsDir%\%ProjectName%
>nul copy EditorGraphic.dat %ProjectsDir%\%ProjectName%
>nul copy Game.ini %ProjectsDir%\%ProjectName%
>nul copy GuruGuruSMF4.dll %ProjectsDir%\%ProjectName%
mkdir %ProjectsDir%\%ProjectName%\Tools
mkdir %ProjectsDir%\%ProjectName%\Assets
>nul copy データ集\グラフィック合成器.zip %ProjectsDir%\%ProjectName%\Assets
>nul CScript.exe Unzip.vbs %CD%\データ集\バージョン1素材集.zip %ProjectsDir%\%ProjectName%\Assets
echo.
echo プロジェクトの作成が完了しました。
echo.
>nul timeout 1
goto Finish


:Finish

set /p Exit="終了しますか？(Y/N)："
if "%Exit%" == "Y" (
  exit
) else if "%Exit%" == "N" (
  echo.
  goto Menu
) else if "%Exit%" == "y" (
  exit
) else if "%Exit%" == "n" (
  echo.
  goto Menu
) else (
  echo.
  echo ####################
  echo Error:Invalid State.
  echo ####################
  >nul timeout 2
  echo.
  goto Finish
)