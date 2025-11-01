# ⚡ Quick Start Guide

Get your Aptos Todo dApp running in 5 minutes!

## 🚀 Prerequisites Check

✅ Node.js installed? Run: `node --version` (need v18+)  
✅ Aptos CLI installed? Run: `aptos --version` (need v4.10+)  
✅ Petra Wallet installed? Check your browser extensions

## 📝 Step-by-Step

### 1️⃣ Deploy Smart Contract (5 min)

```bash
# Navigate to contract folder
cd contract

# Initialize Aptos (if not done)
aptos init
# Choose: devnet, generate new keypair

# Get your address
aptos account list
# Copy the address (0x...)

# Edit Move.toml - replace YOUR_ADDRESS
# [addresses]
# todo_addr = "0xYOUR_ADDRESS"

# Deploy
aptos move publish --named-addresses todo_addr=YOUR_ADDRESS --skip-fetch-latest-git-deps
```

**✨ Save your deployed address!**

### 2️⃣ Configure Frontend (1 min)

```bash
# Go to frontend folder
cd ../frontend

# Open TodoApp.jsx
# Line 16: Update MODULE_ADDRESS with your deployed address
```

### 3️⃣ Run the App (30 sec)

```bash
# Still in frontend folder
npm run dev
```

**🎉 App opens at http://localhost:3000**

### 4️⃣ Connect Wallet (30 sec)

1. Click "Connect Petra Wallet"
2. Approve connection
3. Make sure you're on **Devnet**

### 5️⃣ Start Using! (Now!)

- Type a task → Click "Add Task"
- Click any task to mark complete
- Watch the beautiful animations! ✨

## 🎨 What You'll See

### Landing Page
- Futuristic animated header
- Glowing "Connect Wallet" button
- Cyberpunk-themed background

### Main Interface
- **Statistics Panel**: Total, Completed, Pending tasks
- **Task Input**: Neon-accented input field
- **Task List**: Glass-morphism cards with smooth animations
- **Hover Effects**: Everything glows and scales!

## 🐛 Quick Troubleshooting

**Wallet won't connect?**
- Check Petra is installed
- Switch to Devnet in Petra
- Refresh page

**"Module not found" error?**
- Verify MODULE_ADDRESS in TodoApp.jsx
- Check contract is deployed
- Use same account that deployed

**Transaction fails?**
- Fund account: `aptos account fund-with-faucet --account default`
- Check you're on Devnet

**Port 3000 in use?**
- Change port in `vite.config.js`
- Or kill process on port 3000

## 📁 Project Structure

```
aptos-todo-dapp/
├── contract/              # Smart contract
│   ├── sources/
│   │   └── todo_list.move
│   └── Move.toml
│
├── frontend/              # React app
│   ├── src/
│   │   ├── components/    # UI components
│   │   ├── App.jsx
│   │   └── index.css
│   ├── package.json
│   └── vite.config.js
│
└── README.md             # Full documentation
```

## 🎯 Key Files to Edit

1. **contract/Move.toml** - Your contract address
2. **frontend/src/components/TodoApp.jsx** - Module address (line 16)
3. **frontend/tailwind.config.js** - Customize colors/animations

## 💡 Pro Tips

- **Hot Reload**: Edit any file, see changes instantly
- **Animations**: Hover over everything to see effects
- **Stats**: Watch counters animate when tasks change
- **Mobile**: Works great on phones too!

## 🎨 Customization

### Change Colors
Edit `tailwind.config.js`:
```javascript
neon: {
  blue: '#00f0ff',    // Change these!
  purple: '#b400ff',
  pink: '#ff00e5',
}
```

### Adjust Animations
Edit `tailwind.config.js`:
```javascript
animation: {
  'glow': 'glow 2s ...',  // Speed up/slow down
}
```

## 📚 More Resources

- **Full Setup**: See `SETUP_GUIDE.md`
- **Design Details**: See `DESIGN_FEATURES.md`
- **Changes**: See `CHANGELOG.md`
- **Frontend Docs**: See `frontend/README.md`

## 🆘 Need Help?

1. Check browser console for errors
2. Review `SETUP_GUIDE.md` for detailed steps
3. Verify all addresses match
4. Ensure sufficient APT in account

## 🎉 You're Done!

Enjoy your futuristic blockchain todo app! 

**Next Steps:**
- Add more tasks
- Try completing them
- Watch the animations
- Customize the design
- Show it to friends! 🚀

---

**Time to completion: ~7 minutes** ⚡

Made with ❤️ for the Aptos ecosystem
