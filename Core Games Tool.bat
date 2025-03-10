@echo off
:: Advanced Core Games Tool Batch Script

:: Set variables
set "CoreGamesPath=C:\Program Files\Core Games\CoreGames.exe"
set "TempDir=C:\Users\%username%\AppData\Local\CoreGames\Temp"

:: Check if Core Games is installed
if exist "%CoreGamesPath%" (
    echo Core Games detected at: %CoreGamesPath%
) else (
    echo Core Games is not installed. Please install it first.
    pause
    exit /b
)

:: Main menu
:menu
cls
echo ======================================
echo        CORE GAMES TOOL BATCH
echo ======================================
echo 1. Launch Core Games
echo 2. Clear temporary files
echo 3. Check for updates
echo 4. Exit
echo ======================================
set /p "choice=Enter your choice (1-4): "

if "%choice%"=="1" goto launch
if "%choice%"=="2" goto clear_temp
if "%choice%"=="3" goto check_updates
if "%choice%"=="4" exit

echo Invalid choice. Please try again.
pause
goto menu

:: Launch Core Games
:launch
echo Launching Core Games...
start "" "%CoreGamesPath%"
pause
goto menu

:: Clear temporary files
:clear_temp
if exist "%TempDir%" (
    echo Clearing temporary files...
    rd /s /q "%TempDir%"
    mkdir "%TempDir%"
    echo Temporary files cleared.
) else (
    echo Temp directory not found.
)
pause
goto menu

:: Check for updates (dummy example)
:check_updates
echo Checking for updates...
echo This feature is under construction.
pause
goto menu
