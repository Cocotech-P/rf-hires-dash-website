@echo off
echo ============================================================
echo  Push to GitHub
echo ============================================================

:: Stage everything not covered by .gitignore
git add -A

:: Unstage any *bak*, *.ps1, *.bat files if accidentally staged
for /f "tokens=2*" %%a in ('git status --short ^| findstr /i "bak" 2^>nul') do git restore --staged "%%b" 2>nul
for /f "tokens=2*" %%a in ('git status --short ^| findstr /i "\.ps1$" 2^>nul') do git restore --staged "%%b" 2>nul
for /f "tokens=2*" %%a in ('git status --short ^| findstr /i "\.bat$" 2^>nul') do git restore --staged "%%b" 2>nul

:: Build timestamp for filename: DDMMMhhmm (e.g. 11May0934)
for /f "tokens=1-3 delims=/ " %%a in ("%date%") do (
    set DD=%%a
    set MON=%%b
)
for /f "tokens=1-2 delims=:. " %%a in ("%time: =0%") do (
    set HH=%%a
    set MM=%%b
)
set LOGFILE=FilesPushed-%DD%%MON%%HH%%MM%.txt

:: Show what's staged (excluding bak/ps1/bat) and save to log file
echo.
echo Staged files:
git status --short | findstr /v /i "bak" | findstr /v /i "\.ps1" | findstr /v /i "\.bat"
echo ============================================================  > %LOGFILE%
echo  Files pushed: %date% %time%                                 >> %LOGFILE%
echo ============================================================  >> %LOGFILE%
git status --short | findstr /v /i "bak" | findstr /v /i "\.ps1" | findstr /v /i "\.bat" >> %LOGFILE%

:: Prompt for commit message (default = timestamp if left blank)
echo.
set /p MSG="Commit message (Enter for timestamp): "
if "%MSG%"=="" (
    for /f "tokens=1-5 delims=/:. " %%a in ("%date% %time%") do (
        set MSG=Update %%a-%%b-%%c %%d:%%e
    )
)

echo.                                                              >> %LOGFILE%
echo Commit: %MSG%                                                 >> %LOGFILE%

git commit -m "%MSG%"

echo.
echo Pushing to GitHub...
git push

echo.
echo ============================================================
echo  Done. File list saved to %LOGFILE%
echo ============================================================
pause