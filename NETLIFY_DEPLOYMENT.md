# 🚀 Netlify Deployment Guide

Complete guide to deploy your Aptos Todo dApp to Netlify using drag-and-drop.

## 📋 Prerequisites

- ✅ Smart contract deployed to Aptos Devnet
- ✅ Module address configured in `TodoApp.jsx`
- ✅ Node.js installed (v18+)
- ✅ Netlify account (free tier works!)

## 🎯 Quick Deployment (Drag & Drop)

### Step 1: Build the Project

```bash
cd frontend
npm run build
```

This creates an optimized production build in the `dist` folder.

### Step 2: Create Deployment Package

#### Option A: Using PowerShell (Windows)

```powershell
# Navigate to frontend directory
cd d:\25$\frontend

# Create a zip file of the dist folder
Compress-Archive -Path dist\* -DestinationPath ..\aptos-todo-dapp-deploy.zip -Force
```

#### Option B: Manual Method

1. Navigate to `d:\25$\frontend\dist`
2. Select ALL files and folders inside `dist`
3. Right-click → "Send to" → "Compressed (zipped) folder"
4. Name it `aptos-todo-dapp-deploy.zip`
5. Move the zip file to a convenient location

#### Option C: Using Command Line (if you have 7zip or WinRAR)

```bash
# Using 7zip
cd frontend
7z a -tzip ../aptos-todo-dapp-deploy.zip ./dist/*

# Using tar (Windows 10+)
cd frontend/dist
tar -a -c -f ../../aptos-todo-dapp-deploy.zip *
```

### Step 3: Deploy to Netlify

1. **Go to Netlify**: https://app.netlify.com/drop
2. **Drag and drop** your `aptos-todo-dapp-deploy.zip` file
3. **Wait** for deployment (usually 10-30 seconds)
4. **Get your URL**: Netlify will provide a URL like `https://random-name-123.netlify.app`

### Step 4: Configure Custom Domain (Optional)

1. Click "Domain settings" in Netlify dashboard
2. Click "Add custom domain"
3. Follow the instructions to connect your domain

## 🔧 Configuration Files Included

### `netlify.toml`
- Build configuration
- Redirect rules for SPA
- Security headers
- Cache settings

### `_redirects`
- Ensures all routes work with React Router
- Redirects all paths to index.html

### `public/_headers`
- Security headers
- Cache control for assets
- Performance optimization

## 📝 Important Notes

### Before Building

**⚠️ CRITICAL: Update Module Address**

Open `frontend/src/components/TodoApp.jsx` and update line 16:

```javascript
const MODULE_ADDRESS = '0xYOUR_ACTUAL_DEPLOYED_ADDRESS'
```

Replace with your actual deployed contract address!

### Environment Variables (Optional)

If you want to use environment variables:

1. Create `.env.production` in frontend folder:
```env
VITE_MODULE_ADDRESS=0xYOUR_MODULE_ADDRESS
VITE_APTOS_NETWORK=devnet
```

2. Update `TodoApp.jsx` to use env variables:
```javascript
const MODULE_ADDRESS = import.meta.env.VITE_MODULE_ADDRESS || '0xYOUR_FALLBACK_ADDRESS'
```

3. In Netlify dashboard:
   - Go to "Site settings" → "Environment variables"
   - Add `VITE_MODULE_ADDRESS` with your address

## 🎨 Build Optimization

The build is optimized with:
- ✅ Code splitting
- ✅ Tree shaking
- ✅ Minification
- ✅ Asset optimization
- ✅ Vendor chunking

### Build Output

After running `npm run build`, you'll see:

```
dist/
├── index.html
├── assets/
│   ├── index-[hash].js
│   ├── index-[hash].css
│   ├── react-vendor-[hash].js
│   ├── aptos-vendor-[hash].js
│   └── animation-vendor-[hash].js
└── _redirects
```

## 🔍 Verification Checklist

Before deploying, verify:

- [ ] `npm run build` completes successfully
- [ ] `dist` folder is created
- [ ] `dist/index.html` exists
- [ ] `dist/assets` folder contains JS and CSS files
- [ ] Module address is correctly set in code
- [ ] No build errors in console

## 🐛 Troubleshooting

### Build Fails

**Error: "Cannot find module"**
```bash
cd frontend
rm -rf node_modules package-lock.json
npm install
npm run build
```

**Error: "Out of memory"**
```bash
# Increase Node memory
$env:NODE_OPTIONS="--max-old-space-size=4096"
npm run build
```

### Deployment Issues

**Issue: Blank page after deployment**
- Check browser console for errors
- Verify module address is correct
- Check if all files are in the zip

**Issue: 404 on page refresh**
- Ensure `_redirects` file is in the dist folder
- Check `netlify.toml` is in the root

**Issue: Wallet not connecting**
- Petra Wallet works on deployed sites
- Ensure you're on Devnet network
- Check browser console for errors

## 📊 Deployment Checklist

### Pre-Deployment
- [ ] Smart contract deployed
- [ ] Module address updated in code
- [ ] Dependencies installed (`npm install`)
- [ ] Build successful (`npm run build`)
- [ ] Dist folder created

### Deployment
- [ ] Zip file created from dist contents
- [ ] Uploaded to Netlify
- [ ] Deployment successful
- [ ] Site URL received

### Post-Deployment
- [ ] Site loads correctly
- [ ] No console errors
- [ ] Wallet connection works
- [ ] Can create tasks
- [ ] Can complete tasks
- [ ] Animations work smoothly

## 🚀 Alternative Deployment Methods

### Method 1: Netlify CLI

```bash
# Install Netlify CLI
npm install -g netlify-cli

# Login to Netlify
netlify login

# Deploy
cd frontend
npm run build
netlify deploy --prod --dir=dist
```

### Method 2: Git Integration

1. Push your code to GitHub
2. Connect repository to Netlify
3. Set build command: `cd frontend && npm run build`
4. Set publish directory: `frontend/dist`
5. Deploy automatically on push

### Method 3: Netlify Drop (Current Method)

1. Build locally
2. Zip the dist folder
3. Drag and drop to https://app.netlify.com/drop

## 🔄 Updating Your Deployment

To update your deployed site:

```bash
# 1. Make your changes
# 2. Build again
cd frontend
npm run build

# 3. Create new zip
Compress-Archive -Path dist\* -DestinationPath ..\aptos-todo-dapp-deploy.zip -Force

# 4. Go to Netlify dashboard
# 5. Click "Deploys" tab
# 6. Drag and drop new zip file
```

## 📈 Performance Tips

### Optimize Build Size

1. **Remove unused dependencies**
```bash
npm prune
```

2. **Analyze bundle size**
```bash
npm run build -- --mode analyze
```

3. **Enable compression** (Netlify does this automatically)

### Speed Up Loading

- ✅ Code splitting (already configured)
- ✅ Asset caching (configured in headers)
- ✅ Lazy loading (can be added to components)
- ✅ Image optimization (use WebP if adding images)

## 🌐 Custom Domain Setup

### Using Netlify Domain

1. Go to "Domain settings"
2. Click "Options" → "Edit site name"
3. Choose a custom subdomain: `your-app-name.netlify.app`

### Using Your Own Domain

1. Buy domain from registrar (Namecheap, GoDaddy, etc.)
2. In Netlify: "Domain settings" → "Add custom domain"
3. Update DNS records at your registrar:
   ```
   Type: A
   Name: @
   Value: 75.2.60.5
   
   Type: CNAME
   Name: www
   Value: your-site.netlify.app
   ```
4. Wait for DNS propagation (up to 48 hours)

## 🔒 Security

### HTTPS

- ✅ Netlify provides free SSL certificates
- ✅ Automatic HTTPS redirect
- ✅ Security headers configured

### Environment Variables

Never commit:
- Private keys
- API secrets
- Sensitive configuration

Use Netlify environment variables instead.

## 📱 Testing Deployed Site

### Checklist

1. **Open site URL** in browser
2. **Test wallet connection**
   - Click "Connect Petra Wallet"
   - Approve connection
   - Verify address shows
3. **Create a task**
   - Enter task text
   - Click "Add Task"
   - Approve transaction
   - Verify task appears
4. **Complete a task**
   - Click on task
   - Approve transaction
   - Verify completion animation
5. **Check responsiveness**
   - Test on mobile
   - Test on tablet
   - Test on desktop

## 💡 Pro Tips

1. **Use Netlify Analytics** - Track visitors (free tier available)
2. **Enable Deploy Previews** - Test before going live
3. **Set up notifications** - Get alerts on deploy status
4. **Use branch deploys** - Test features separately
5. **Monitor performance** - Use Lighthouse scores

## 📞 Support

### Netlify Issues
- Netlify Docs: https://docs.netlify.com/
- Netlify Support: https://www.netlify.com/support/

### App Issues
- Check browser console
- Review `SETUP_GUIDE.md`
- Verify contract deployment
- Test locally first

## 🎉 Success!

Once deployed, share your app:
- Tweet the URL
- Share with friends
- Add to portfolio
- Submit to showcases

---

**Your futuristic Aptos Todo dApp is now live on the internet!** 🚀✨

Made with ❤️ for the Aptos ecosystem
