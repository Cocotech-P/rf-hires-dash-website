@echo off
cd /d "C:\Users\James\PythonProjects\RF_Website"
echo Starting Hugo dev server...
echo Preview at http://localhost:1313/
echo Press Ctrl+C to stop.
echo.
hugo server --cleanDestinationDir
pause