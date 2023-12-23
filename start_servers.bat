@echo off

echo Starting EyeTry API...
cd EyeTry-API
start npm start
cd ..

echo Starting EyeTry Web...
cd EyeTry-Web
start npm start
cd ..

echo Starting EyeTry Admin Panel...
cd "EyeTry-AdminDashboard"
start npm run dev
cd ..

echo Starting IPD Flask...
cd "ipd-flask"
set FLASK_APP=app.py
set FLASK_ENV=development
start python -m flask run -p 5004
cd ..

echo Starting Face Shape Detection Flask...
cd "EyeTry-FaceShapeDetection"
call Scripts\activate
set FLASK_APP=main.py
set FLASK_ENV=development
start flask run -p 4444
cd ..

echo All servers started successfully.

:menu
echo.
echo Menu:
echo 1. Stop all servers
echo 2. Exit
echo.

set /p choice=Enter your choice (1/2): 

if "%choice%"=="1" (
    echo Stopping all servers...
    
    taskkill /f /im node.exe
    taskkill /f /im python.exe
    taskkill /f /im flask.exe
    
    echo All servers stopped.
    goto :eof
) else if "%choice%"=="2" (
    echo Exiting script...
    goto :eof
) else (
    echo Invalid choice. Please enter 1 or 2.
    goto :menu
)