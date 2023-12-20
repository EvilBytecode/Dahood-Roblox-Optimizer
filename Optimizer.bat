@echo off

echo.
Title DaHood Optimizer EvilBytecode
color 4
::btw this code is not fully mine, i just rewritten it a bit :P 

for /d %%i in ("%localappdata%\Roblox\Versions\*") do (
    if exist "%%i\RobloxPlayerBeta.exe" (
        set folder=%%i
        goto :26as62d65wa65s65d65w56a65s6d5w65a56s6d565wa65sd56
    )
)

for /d %%i in ("C:\Program Files (x86)\Roblox\Versions\*") do (
    if exist "%%i\RobloxPlayerBeta.exe" (
        set folder=%%i
        goto :26as62d65wa65s65d65w56a65s6d5w65a56s6d565wa65sd56
    )
)

for /d %%i in ("C:\Program Files\Roblox\Versions\*") do (
    if exist "%%i\RobloxPlayerBeta.exe" (
        set folder=%%i
        goto :26as62d65wa65s65d65w56a65s6d5w65a56s6d565wa65sd56
    )
)

for /d %%i in ("%localappdata%\Bloxstrap\Versions\*") do (
    if exist "%%i\RobloxPlayerBeta.exe" (
        set folder=%%i
        goto :26as62d65wa65s65d65w56a65s6d5w65a56s6d565wa65sd56
    )
)

:26as62d65wa65s65d65w56a65s6d5w65a56s6d565wa65sd56
if not exist "%folder%\ClientSettings" (
    mkdir "%folder%\ClientSettings"
)

:knaknsdnasdknnwnankksndka9889sadnamsdmnasmndnasmndmn
cls
echo 8888b.  88  88      dP"Yb  88""Yb 888888 88 8b    d8 88 8888P 888888 88""Yb 
echo  8I  Yb 88  88     dP   Yb 88__dP   88   88 88b  d88 88   dP  88__   88__dP 
echo  8I  dY 888888     Yb   dP 88"""    88   88 88YbdP88 88  dP   88""   88"Yb  
echo 8888Y"  88  88      YbodP  88       88   88 88 YY 88 88 d8888 888888 88  Yb 
echo.

echo Choose an option:
echo.
echo 1. No Shadows + No Textures
echo 2. No Shadows
echo.
set /p ch=Enter your choice (1 or 2): 

if "%ch%"=="1" (
    echo Downloading ClientAppSettings.json file...
    powershell.exe -Command "& {(New-Object System.Net.WebClient).DownloadFile('https://raw.githubusercontent.com/EvilBytecode/Dahood-Roblox-Optimizer/main/Utils/ClientAppSettings.json', '%folder%\ClientSettings\ClientAppSettings.json')}"
    echo SUCCESS: Installation completed!
) else if "%ch%"=="2" (
    echo.
    powershell.exe -Command "& {(New-Object System.Net.WebClient).DownloadFile('https://raw.githubusercontent.com/EvilBytecode/Dahood-Roblox-Optimizer/main/noshadows/ClientAppSettings.json', '%folder%\ClientSettings\ClientAppSettings.json')}"
    echo.
    echo SUCCESS: Installation completed!
) else (
    echo.
    echo Invalid choice. Please enter 1 or 2, based of your choice.
    goto :knaknsdnasdknnwnankksndka9889sadnamsdmnasmndnasmndmn
)

echo.
echo Press any key to continue... & pause >nul
