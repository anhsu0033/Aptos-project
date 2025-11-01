# 🚀 Aptos Todo dApp - Futuristic Frontend

A modern, futuristic UI/UX implementation for the Aptos Todo dApp built with React, Vite, TailwindCSS, and Framer Motion.

## ✨ Features

- **🎨 Modern & Futuristic Design**: Glass morphism, neon accents, and smooth animations
- **⚡ Lightning Fast**: Built with Vite for instant HMR and optimized builds
- **🎭 Smooth Animations**: Powered by Framer Motion for delightful interactions
- **📱 Responsive**: Works seamlessly on desktop, tablet, and mobile
- **🔗 Wallet Integration**: Seamless Petra Wallet connection
- **🌊 Real-time Updates**: Instant blockchain synchronization
- **📊 Statistics Dashboard**: Track your task completion progress

## 🛠️ Tech Stack

- **React 18** - UI framework
- **Vite** - Build tool and dev server
- **TailwindCSS** - Utility-first CSS framework
- **Framer Motion** - Animation library
- **Aptos TS SDK** - Blockchain integration
- **Lucide React** - Beautiful icon set

## 📋 Prerequisites

1. **Node.js** (v18 or higher)
2. **Petra Wallet** browser extension
3. **Aptos CLI** (for smart contract deployment)

## 🚀 Quick Start

### 1. Install Dependencies

```bash
cd frontend
npm install
```

### 2. Configure Module Address

Open `src/components/TodoApp.jsx` and update the module address:

```javascript
const MODULE_ADDRESS = '0xYOUR_MODULE_ADDRESS_HERE'
```

Replace `0xYOUR_MODULE_ADDRESS_HERE` with your deployed smart contract address.

### 3. Run Development Server

```bash
npm run dev
```

The app will open at `http://localhost:3000`

### 4. Build for Production

```bash
npm run build
```

The optimized build will be in the `dist` folder.

### 5. Preview Production Build

```bash
npm run preview
```

## 🎨 UI Components

### Header
- Animated logo with rotating icons
- Gradient text effects
- Network status indicator

### WalletConnect
- Beautiful wallet connection interface
- Feature highlights
- Smooth animations

### StatsPanel
- Real-time task statistics
- Animated counters
- Color-coded metrics

### TaskInput
- Futuristic input field
- Loading states
- Error handling

### TaskList & TaskItem
- Smooth list animations
- Interactive task items
- Completion animations
- Empty state design

## 🎯 Design Philosophy

The UI follows a **futuristic cyberpunk aesthetic** with:

- **Glass Morphism**: Translucent cards with backdrop blur
- **Neon Accents**: Cyan, purple, and pink color scheme
- **Smooth Animations**: Micro-interactions for every action
- **Dark Theme**: Easy on the eyes with high contrast
- **Gradient Effects**: Dynamic color transitions
- **Floating Elements**: Subtle hover and float animations

## 🔧 Customization

### Colors

Edit `tailwind.config.js` to customize the color scheme:

```javascript
colors: {
  neon: {
    blue: '#00f0ff',
    purple: '#b400ff',
    pink: '#ff00e5',
    green: '#00ff88',
  }
}
```

### Animations

Modify animations in `tailwind.config.js`:

```javascript
animation: {
  'glow': 'glow 2s ease-in-out infinite alternate',
  'float': 'float 3s ease-in-out infinite',
}
```

### Styling

Global styles are in `src/index.css` with custom classes:
- `.glass-card` - Glass morphism effect
- `.btn-primary` - Primary button style
- `.btn-secondary` - Secondary button style
- `.input-futuristic` - Futuristic input field

## 📱 Responsive Design

The app is fully responsive with breakpoints:
- Mobile: < 768px
- Tablet: 768px - 1024px
- Desktop: > 1024px

## 🐛 Troubleshooting

### Issue: "Cannot find module '@aptos-labs/ts-sdk'"

**Solution:**
```bash
npm install
```

### Issue: Wallet not connecting

**Solution:**
1. Ensure Petra Wallet is installed
2. Check you're on Devnet network
3. Refresh the page

### Issue: Module address error

**Solution:**
Update `MODULE_ADDRESS` in `src/components/TodoApp.jsx` with your deployed contract address

## 📚 Project Structure

```
frontend/
├── src/
│   ├── components/
│   │   ├── TodoApp.jsx      # Main app component
│   │   ├── Header.jsx       # Header with logo
│   │   ├── WalletConnect.jsx # Wallet connection
│   │   ├── StatsPanel.jsx   # Statistics display
│   │   ├── TaskInput.jsx    # Task creation form
│   │   ├── TaskList.jsx     # Task list container
│   │   └── TaskItem.jsx     # Individual task item
│   ├── App.jsx              # App wrapper
│   ├── main.jsx             # Entry point
│   └── index.css            # Global styles
├── index.html               # HTML template
├── package.json             # Dependencies
├── vite.config.js           # Vite configuration
├── tailwind.config.js       # Tailwind configuration
└── postcss.config.js        # PostCSS configuration
```

## 🎬 Animation Details

- **Page Load**: Fade in with slide up
- **Task Creation**: Smooth entry animation
- **Task Completion**: Check mark animation with color change
- **Hover Effects**: Scale and glow effects
- **Loading States**: Spinning loaders with smooth transitions

## 🌐 Network Configuration

The app is configured for Aptos Devnet. To change networks, update in `src/components/TodoApp.jsx`:

```javascript
const config = new AptosConfig({ network: Network.TESTNET }) // or Network.MAINNET
```

## 📄 License

MIT License - feel free to use this for your own projects!

## 🙏 Credits

- Design inspired by modern Web3 applications
- Icons by Lucide React
- Animations by Framer Motion
- Built with ❤️ for the Aptos ecosystem

---

⭐ If you like this design, please star the repository!
