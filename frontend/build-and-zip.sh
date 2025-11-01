#!/bin/bash

echo "========================================"
echo "  Aptos Todo dApp - Netlify Deployment"
echo "========================================"
echo ""

echo "[1/3] Building production bundle..."
npm run build

if [ $? -ne 0 ]; then
    echo ""
    echo "ERROR: Build failed!"
    echo "Please fix the errors and try again."
    exit 1
fi

echo ""
echo "[2/3] Creating deployment package..."
cd ..
rm -f aptos-todo-dapp-deploy.zip

# Try different zip methods
if command -v zip &> /dev/null; then
    cd frontend/dist
    zip -r ../../aptos-todo-dapp-deploy.zip .
    cd ../..
elif command -v tar &> /dev/null; then
    cd frontend/dist
    tar -czf ../../aptos-todo-dapp-deploy.zip *
    cd ../..
else
    echo "ERROR: No zip utility found!"
    echo "Please install zip or use manual method."
    exit 1
fi

if [ $? -ne 0 ]; then
    echo ""
    echo "ERROR: Failed to create zip file!"
    exit 1
fi

echo ""
echo "[3/3] Deployment package ready!"
echo ""
echo "========================================"
echo "  SUCCESS!"
echo "========================================"
echo ""
echo "Your deployment package is ready:"
echo "Location: $(pwd)/aptos-todo-dapp-deploy.zip"
echo ""
echo "Next steps:"
echo "1. Go to https://app.netlify.com/drop"
echo "2. Drag and drop the zip file"
echo "3. Wait for deployment to complete"
echo "4. Get your live URL!"
echo ""
echo "========================================"
