# 🚀 Complete Setup Guide - Aptos Todo dApp

This guide will walk you through setting up the Aptos Todo dApp with the new futuristic frontend.

## 📋 Table of Contents

1. [Prerequisites](#prerequisites)
2. [Smart Contract Setup](#smart-contract-setup)
3. [Frontend Setup](#frontend-setup)
4. [Configuration](#configuration)
5. [Running the Application](#running-the-application)
6. [Troubleshooting](#troubleshooting)

## Prerequisites

### Required Software

1. **Node.js** (v18 or higher)
   - Download from: https://nodejs.org/
   - Verify installation: `node --version`

2. **Aptos CLI** (v4.10.x or higher)
   - Installation guide: https://aptos.dev/cli-tools/aptos-cli-tool/install-aptos-cli
   - Verify installation: `aptos --version`

3. **Petra Wallet** Browser Extension
   - Chrome/Brave: https://chrome.google.com/webstore/detail/petra-aptos-wallet/ejjladinnckdgjemekebdpeokbikhfci
   - Make sure to create an account and switch to **Devnet**

## Smart Contract Setup

### Step 1: Initialize Aptos CLI

```bash
# Navigate to contract directory
cd contract

# Initialize Aptos (if not already done)
aptos init

# Select network: devnet
# Press Enter to generate new keypair
# Your account will be automatically funded
```

### Step 2: Get Your Account Address

```bash
aptos account list
```

Copy your account address (starts with `0x...`)

### Step 3: Update Move.toml

Open `contract/Move.toml` and update the address:

```toml
[addresses]
todo_addr = "0xYOUR_ADDRESS_HERE"
```

Replace `0xYOUR_ADDRESS_HERE` with your actual address.

### Step 4: Compile the Contract

```bash
aptos move compile --named-addresses todo_addr=YOUR_ADDRESS --skip-fetch-latest-git-deps
```

Replace `YOUR_ADDRESS` with your address (without quotes).

### Step 5: Deploy to Devnet

```bash
aptos move publish --named-addresses todo_addr=YOUR_ADDRESS --skip-fetch-latest-git-deps
```

**Important:** Save the transaction hash and module address from the output!

## Frontend Setup

### Step 1: Install Dependencies

```bash
# Navigate to frontend directory
cd ../frontend

# Install all dependencies
npm install
```

This will install:
- React 18
- Vite
- TailwindCSS
- Framer Motion
- Aptos TS SDK
- Lucide React icons
- And more...

### Step 2: Configure Module Address

Open `frontend/src/components/TodoApp.jsx` and find line 16:

```javascript
const MODULE_ADDRESS = '0xYOUR_MODULE_ADDRESS_HERE'
```

Replace `0xYOUR_MODULE_ADDRESS_HERE` with your deployed contract address.

## Configuration

### Import Account to Petra Wallet

1. **Get Your Private Key**

   Windows:
   ```bash
   type .aptos\config.yaml
   ```

   Mac/Linux:
   ```bash
   cat .aptos/config.yaml
   ```

2. **Import to Petra**
   - Open Petra Wallet
   - Click account menu → "Add Account" → "Import Private Key"
   - Paste your private key
   - Switch to this account
   - Ensure you're on **Devnet** network

### Verify Network Configuration

The app is configured for Aptos Devnet by default. If you need to change networks:

**In `frontend/src/components/TodoApp.jsx`:**
```javascript
const config = new AptosConfig({ network: Network.DEVNET })
// Change to Network.TESTNET or Network.MAINNET if needed
```

## Running the Application

### Development Mode

```bash
cd frontend
npm run dev
```

The app will automatically open at `http://localhost:3000`

### Production Build

```bash
# Build for production
npm run build

# Preview production build
npm run preview
```

## Using the Application

1. **Open the App**
   - Navigate to `http://localhost:3000`
   - You'll see the futuristic landing page

2. **Connect Wallet**
   - Click "Connect Petra Wallet"
   - Approve the connection in Petra popup
   - Your address will be displayed

3. **Create Tasks**
   - Type your task in the input field
   - Click "Add Task" or press Enter
   - Approve the transaction in Petra
   - Wait for confirmation (usually 1-2 seconds)

4. **Complete Tasks**
   - Click on any pending task
   - Approve the transaction
   - Task will be marked as completed with animation

5. **View Statistics**
   - See total, completed, and pending tasks
   - Stats update in real-time

## Troubleshooting

### Issue: "Cannot find module" errors

**Solution:**
```bash
cd frontend
rm -rf node_modules package-lock.json
npm install
```

### Issue: Wallet not connecting

**Solutions:**
1. Ensure Petra Wallet is installed and enabled
2. Check you're on Devnet network in Petra
3. Refresh the page
4. Try disconnecting and reconnecting

### Issue: "Module not found" when creating tasks

**Solutions:**
1. Verify `MODULE_ADDRESS` in `TodoApp.jsx` matches your deployed address
2. Ensure you're using the same account that deployed the contract
3. Check you're on Devnet network
4. Verify contract is deployed: `aptos account list`

### Issue: Transaction fails

**Solutions:**
1. Check account has sufficient APT tokens
2. Fund account: `aptos account fund-with-faucet --account default`
3. Ensure contract is properly deployed
4. Check browser console for detailed error

### Issue: CSS not loading properly

**Solution:**
The Tailwind warnings in the editor are normal. They'll be processed by PostCSS when you run the dev server.

### Issue: Port 3000 already in use

**Solution:**
```bash
# Kill the process using port 3000
# Windows:
netstat -ano | findstr :3000
taskkill /PID <PID> /F

# Mac/Linux:
lsof -ti:3000 | xargs kill -9
```

Or change the port in `vite.config.js`:
```javascript
server: {
  port: 3001, // Change to any available port
  open: true
}
```

## Development Tips

### Hot Module Replacement (HMR)

Vite provides instant HMR. Any changes you make to the code will reflect immediately without page reload.

### Component Structure

```
src/components/
├── TodoApp.jsx       # Main container, handles blockchain logic
├── Header.jsx        # Animated header with logo
├── WalletConnect.jsx # Wallet connection interface
├── StatsPanel.jsx    # Statistics display
├── TaskInput.jsx     # Task creation form
├── TaskList.jsx      # Task list container
└── TaskItem.jsx      # Individual task component
```

### Customizing the UI

**Colors:** Edit `tailwind.config.js`
**Animations:** Modify `tailwind.config.js` keyframes
**Styles:** Update `src/index.css`

### Testing on Different Networks

1. Update `AptosConfig` network in `TodoApp.jsx`
2. Switch network in Petra Wallet
3. Deploy contract to that network
4. Update `MODULE_ADDRESS`

## Next Steps

- [ ] Add delete task functionality
- [ ] Implement task editing
- [ ] Add task categories/tags
- [ ] Create dark/light mode toggle
- [ ] Add task due dates
- [ ] Implement task sharing

## Support

If you encounter issues:
1. Check the browser console for errors
2. Review the Aptos CLI logs
3. Verify all addresses and configurations
4. Ensure sufficient APT tokens in account

## Resources

- [Aptos Documentation](https://aptos.dev/)
- [Move Language Book](https://move-language.github.io/move/)
- [Petra Wallet Docs](https://petra.app/docs)
- [Vite Documentation](https://vitejs.dev/)
- [TailwindCSS Docs](https://tailwindcss.com/)
- [Framer Motion Docs](https://www.framer.com/motion/)

---

🎉 Congratulations! You now have a fully functional futuristic Aptos Todo dApp!
