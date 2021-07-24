@echo off
setlocal
cd /d %~dp0
echo ===========================================
echo WolfRPGEditor�v���W�F�N�g�Z�b�g�A�b�v�c�[��
echo ===========================================
echo.
rem �ݒ�t�@�C���̊m�F�@�Ȃ����Settings��
>nul 2>&1 type WolfRPGEditorProjectSetupTool.ini
if %errorlevel% neq 0 (
  goto Settings
)
:Check
rem �t�@�C���`�F�b�N
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
  >>Unzip.vbs echo Set objFolder = objShell.NameSpace ^(WScript.Arguments^(1^)^) '�w�肳�ꂽ�𓀐�t�H���_
  >>Unzip.vbs echo else
  >>Unzip.vbs echo Set objFolder = objShell.NameSpace ^(objWshShell.CurrentDirectory^) '�ȗ����̓J�����g�f�B���N�g����
  >>Unzip.vbs echo end if
  >>Unzip.vbs echo.
  >>Unzip.vbs echo objFolder.CopyHere ZipFile, ^&H14 '�i�s�󋵃_�C�A���O�{�b�N�X��\�� + �_�C�A���O�{�b�N�X��[���ׂĂ͂�]
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
if not exist �f�[�^�W (
  set NotFound=�f�[�^�W
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
if not exist �f�[�^�W\�O���t�B�b�N������.zip (
  set NotFound=�f�[�^�W\�O���t�B�b�N������.zip
  goto File404
)
if not exist �f�[�^�W\�o�[�W����1�f�ޏW.zip (
  set NotFound=�f�[�^�W\�o�[�W����1�f�ޏW.zip
  goto File404
)
if not exist �f�[�^�W\�i���S������ԃf�[�^�j (
  set NotFound=�f�[�^�W\�i���S������ԃf�[�^�j
  goto File404
)
if not exist �f�[�^�W\�i��f�[�^[��{�V�X�e������]�j (
  set NotFound=�f�[�^�W\�i��f�[�^[��{�V�X�e������]�j
  goto File404
)
if not exist �f�[�^�W\�i���S������ԃf�[�^�j\Data (
  set NotFound=�f�[�^�W\�i���S������ԃf�[�^�j\Data
  goto File404
)
if not exist �f�[�^�W\�i���S������ԃf�[�^�j\Data\BasicData (
  set NotFound=�f�[�^�W\�i���S������ԃf�[�^�j\Data\BasicData
  goto File404
)
if not exist �f�[�^�W\�i���S������ԃf�[�^�j\Data\BGM (
  set NotFound=�f�[�^�W\�i���S������ԃf�[�^�j\Data\BGM
  goto File404
)
if not exist �f�[�^�W\�i���S������ԃf�[�^�j\Data\CharaChip (
  set NotFound=�f�[�^�W\�i���S������ԃf�[�^�j\Data\CharaChip
  goto File404
)
if not exist �f�[�^�W\�i���S������ԃf�[�^�j\Data\EnemyGraphic (
  set NotFound=�f�[�^�W\�i���S������ԃf�[�^�j\Data\EnemyGraphic
  goto File404
)
if not exist �f�[�^�W\�i���S������ԃf�[�^�j\Data\MapChip (
  set NotFound=�f�[�^�W\�i���S������ԃf�[�^�j\Data\MapChip
  goto File404
)
if not exist �f�[�^�W\�i���S������ԃf�[�^�j\Data\MapData (
  set NotFound=�f�[�^�W\�i���S������ԃf�[�^�j\Data\MapData
  goto File404
)
if not exist �f�[�^�W\�i���S������ԃf�[�^�j\Data\Picture (
  set NotFound=�f�[�^�W\�i���S������ԃf�[�^�j\Data\Picture
  goto File404
)
if not exist �f�[�^�W\�i���S������ԃf�[�^�j\Data\SE (
  set NotFound=�f�[�^�W\�i���S������ԃf�[�^�j\Data\SE
  goto File404
)
if not exist �f�[�^�W\�i���S������ԃf�[�^�j\Data\SystemGraphic (
  set NotFound=�f�[�^�W\�i���S������ԃf�[�^�j\Data\SystemGraphic
  goto File404
)
if not exist �f�[�^�W\�i��f�[�^[��{�V�X�e������]�j\Data (
  set NotFound=�f�[�^�W\�i��f�[�^[��{�V�X�e������]�j\Data
  goto File404
)
if not exist �f�[�^�W\�i��f�[�^[��{�V�X�e������]�j\Data\BasicData (
  set NotFound=�f�[�^�W\�i��f�[�^[��{�V�X�e������]�j\Data\BasicData
  goto File404
)
if not exist �f�[�^�W\�i��f�[�^[��{�V�X�e������]�j\Data\BattleEffect (
  set NotFound=�f�[�^�W\�i��f�[�^[��{�V�X�e������]�j\Data\BattleEffect
  goto File404
)
if not exist �f�[�^�W\�i��f�[�^[��{�V�X�e������]�j\Data\BGM (
  set NotFound=�f�[�^�W\�i��f�[�^[��{�V�X�e������]�j\Data\BGM
  goto File404
)
if not exist �f�[�^�W\�i��f�[�^[��{�V�X�e������]�j\Data\CharaChip (
  set NotFound=�f�[�^�W\�i��f�[�^[��{�V�X�e������]�j\Data\CharaChip
  goto File404
)
if not exist �f�[�^�W\�i��f�[�^[��{�V�X�e������]�j\Data\EnemyGraphic (
  set NotFound=�f�[�^�W\�i��f�[�^[��{�V�X�e������]�j\Data\EnemyGraphic
  goto File404
)
if not exist �f�[�^�W\�i��f�[�^[��{�V�X�e������]�j\Data\MapChip (
  set NotFound=�f�[�^�W\�i��f�[�^[��{�V�X�e������]�j\Data\MapChip
  goto File404
)
if not exist �f�[�^�W\�i��f�[�^[��{�V�X�e������]�j\Data\MapData (
  set NotFound=�f�[�^�W\�i��f�[�^[��{�V�X�e������]�j\Data\MapData
  goto File404
)
if not exist �f�[�^�W\�i��f�[�^[��{�V�X�e������]�j\Data\Picture (
  set NotFound=�f�[�^�W\�i��f�[�^[��{�V�X�e������]�j\Data\Picture
  goto File404
)
if not exist �f�[�^�W\�i��f�[�^[��{�V�X�e������]�j\Data\SE (
  set NotFound=�f�[�^�W\�i��f�[�^[��{�V�X�e������]�j\Data\SE
  goto File404
)
if not exist �f�[�^�W\�i��f�[�^[��{�V�X�e������]�j\Data\SystemFile (
  set NotFound=�f�[�^�W\�i��f�[�^[��{�V�X�e������]�j\Data\SystemFile
  goto File404
)

rem ���C�����j���[
:Menu
echo �\�������j���[����I�����Ă��������B
echo 1. ��{�V�X�e���Ȃ�
echo 2. ��{�V�X�e������
echo 3. �I��
echo.
set /p Constitution="�Y������\���̔ԍ�����͂��Ă��������F"
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
echo �����ݒ���J�n���܂��B
echo.
set /p ProjectsDir="�v���W�F�N�g���쐬����f�B���N�g�����t���p�X�œ��͂��Ă��������F"
>>WolfRPGEditorProjectSetupTool.ini echo [ProjectsDir]
>>WolfRPGEditorProjectSetupTool.ini echo Path=%ProjectsDir%
echo.
>nul timeout 1
echo �����ݒ肪�������܂����B
echo.
goto Check

:MakeDir
mkdir %ProjectsDir%
goto Check
:File404
echo %CD%\%NotFound%��������܂���B
echo ���̃c�[���̒u���ꏊ�����������AWolfRPGEditor�̃t�@�C�����s�����Ă��Ȃ������m�F���Ă��������B
>nul timeout 5
exit

:NoSystem
echo �v���W�F�N�g�̍쐬���J�n���܂��B
echo.
set /p ProjectName="�v���W�F�N�g�̖��O����͂��Ă��������F"
echo.
echo �쐬���ł�...
mkdir %ProjectsDir%\%ProjectName%
mkdir %ProjectsDir%\%ProjectName%\Data
>nul xcopy /t /e �f�[�^�W\�i���S������ԃf�[�^�j\Data %ProjectsDir%\%ProjectName%\Data
>nul copy �f�[�^�W\�i���S������ԃf�[�^�j\Data\BasicData %ProjectsDir%\%ProjectName%\Data\BasicData
>nul copy �f�[�^�W\�i���S������ԃf�[�^�j\Data\MapChip %ProjectsDir%\%ProjectName%\Data\MapChip
>nul copy �f�[�^�W\�i���S������ԃf�[�^�j\Data\SystemGraphic %ProjectsDir%\%ProjectName%\Data\SystemGraphic
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
>nul copy �f�[�^�W\�O���t�B�b�N������.zip %ProjectsDir%\%ProjectName%\Tools
>nul CScript.exe Unzip.vbs %CD%\�f�[�^�W\�o�[�W����1�f�ޏW.zip %ProjectsDir%\%ProjectName%\Assets
echo.
echo �v���W�F�N�g�̍쐬���������܂����B
echo.
>nul timeout 1
goto Finish

:IncludeSystem
echo �v���W�F�N�g�̍쐬���J�n���܂��B
echo.
set /p ProjectName="�v���W�F�N�g�̖��O����͂��Ă��������F"
echo.
>nul timeout 1
echo �쐬���ł�...
mkdir %ProjectsDir%\%ProjectName%
mkdir %ProjectsDir%\%ProjectName%\Data
>nul xcopy /t /e �f�[�^�W\�i��f�[�^[��{�V�X�e������]�j\Data %ProjectsDir%\%ProjectName%\Data
>nul copy �f�[�^�W\�i��f�[�^[��{�V�X�e������]�j\Data\BasicData %ProjectsDir%\%ProjectName%\Data\BasicData
>nul copy �f�[�^�W\�i��f�[�^[��{�V�X�e������]�j\Data\MapChip %ProjectsDir%\%ProjectName%\Data\MapChip
>nul copy �f�[�^�W\�i��f�[�^[��{�V�X�e������]�j\Data\SystemFile %ProjectsDir%\%ProjectName%\Data\SystemFile
>nul copy �f�[�^�W\�i��f�[�^[��{�V�X�e������]�j\Data\BattleEffect %ProjectsDir%\%ProjectName%\Data\BattleEffect
>nul copy �f�[�^�W\�i��f�[�^[��{�V�X�e������]�j\Data\CharaChip %ProjectsDir%\%ProjectName%\Data\CharaChip
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
>nul copy �f�[�^�W\�O���t�B�b�N������.zip %ProjectsDir%\%ProjectName%\Assets
>nul CScript.exe Unzip.vbs %CD%\�f�[�^�W\�o�[�W����1�f�ޏW.zip %ProjectsDir%\%ProjectName%\Assets
echo.
echo �v���W�F�N�g�̍쐬���������܂����B
echo.
>nul timeout 1
goto Finish


:Finish

set /p Exit="�I�����܂����H(Y/N)�F"
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