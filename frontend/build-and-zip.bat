@echo off
echo ========================================
echo   Aptos Todo dApp - Netlify Deployment
echo ========================================
echo.

echo [1/3] Building production bundle...
call npm run build

if %ERRORLEVEL% NEQ 0 (
    echo.
    echo ERROR: Build failed!
    echo Please fix the errors and try again.
    pause
    exit /b 1
)

echo.
echo [2/3] Creating deployment package...
cd ..
if exist aptos-todo-dapp-deploy.zip del aptos-todo-dapp-deploy.zip
powershell -Command "Compress-Archive -Path frontend\dist\* -DestinationPath aptos-todo-dapp-deploy.zip -Force"

if %ERRORLEVEL% NEQ 0 (
    echo.
    echo ERROR: Failed to create zip file!
    pause
    exit /b 1
)

echo.
echo [3/3] Deployment package ready!
echo.
echo ========================================
echo   SUCCESS! 
echo ========================================
echo.
echo Your deployment package is ready:
echo Location: %CD%\aptos-todo-dapp-deploy.zip
echo.
echo Next steps:
echo 1. Go to https://app.netlify.com/drop
echo 2. Drag and drop the zip file
echo 3. Wait for deployment to complete
echo 4. Get your live URL!
echo.
echo ========================================
pause
