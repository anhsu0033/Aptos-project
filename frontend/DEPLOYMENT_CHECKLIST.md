# ✅ Netlify Deployment Checklist

Use this checklist to ensure a successful deployment.

## 📋 Pre-Deployment

### Smart Contract
- [ ] Contract deployed to Aptos Devnet
- [ ] Deployment transaction confirmed
- [ ] Module address saved/copied
- [ ] Account has sufficient APT tokens

### Configuration
- [ ] Opened `src/components/TodoApp.jsx`
- [ ] Updated `MODULE_ADDRESS` on line 16
- [ ] Saved the file
- [ ] Verified address is correct (starts with 0x)

### Dependencies
- [ ] Node.js installed (v18+)
- [ ] Ran `npm install` successfully
- [ ] All dependencies installed
- [ ] No error messages

### Testing
- [ ] Ran `npm run dev` locally
- [ ] App loads without errors
- [ ] Wallet connects successfully
- [ ] Can create tasks
- [ ] Can complete tasks
- [ ] No console errors

## 🏗️ Build Process

### Build Command
- [ ] Navigated to `frontend` folder
- [ ] Ran `npm run build`
- [ ] Build completed successfully
- [ ] No build errors
- [ ] `dist` folder created

### Verify Build Output
- [ ] `dist/index.html` exists
- [ ] `dist/assets/` folder exists
- [ ] JavaScript files present in assets
- [ ] CSS files present in assets
- [ ] `dist/_redirects` file exists

## 📦 Package Creation

### Create Zip File

**Method 1: Automated Script**
- [ ] Ran `build-and-zip.bat` (Windows)
- [ ] OR ran `build-and-zip.sh` (Mac/Linux)
- [ ] Script completed successfully
- [ ] Zip file created in parent directory

**Method 2: Manual PowerShell**
- [ ] Navigated to project root
- [ ] Ran PowerShell compress command
- [ ] Zip file created successfully

**Method 3: Manual GUI**
- [ ] Opened `frontend/dist` folder
- [ ] Selected ALL contents (not the dist folder itself)
- [ ] Right-click → Send to → Compressed folder
- [ ] Named it `aptos-todo-dapp-deploy.zip`

### Verify Package
- [ ] Zip file exists
- [ ] File size is reasonable (500KB - 2MB)
- [ ] Can open/extract zip to verify contents
- [ ] Contains index.html at root level
- [ ] Contains assets folder

## 🚀 Netlify Deployment

### Upload
- [ ] Opened https://app.netlify.com/drop
- [ ] Dragged zip file to drop zone
- [ ] Upload started
- [ ] Upload completed

### Deployment
- [ ] Netlify processing started
- [ ] No deployment errors
- [ ] Deployment completed
- [ ] Received site URL

### Verify Deployment
- [ ] Clicked on provided URL
- [ ] Site loads successfully
- [ ] No blank page
- [ ] Styles loaded correctly
- [ ] Animations working
- [ ] No 404 errors

## 🧪 Post-Deployment Testing

### Basic Functionality
- [ ] Homepage loads
- [ ] Header displays correctly
- [ ] Background animations work
- [ ] No console errors
- [ ] Responsive on mobile

### Wallet Integration
- [ ] "Connect Wallet" button visible
- [ ] Petra Wallet popup appears
- [ ] Connection successful
- [ ] Address displays correctly
- [ ] Network is Devnet

### Task Management
- [ ] Can see task input field
- [ ] Can type in input
- [ ] "Add Task" button works
- [ ] Transaction popup appears
- [ ] Task appears after confirmation
- [ ] Statistics update correctly

### Task Completion
- [ ] Can click on task
- [ ] Completion transaction works
- [ ] Task marked as completed
- [ ] Completion animation plays
- [ ] Statistics update

### Performance
- [ ] Page loads quickly (< 3 seconds)
- [ ] Animations are smooth (60fps)
- [ ] No lag or stuttering
- [ ] Images/assets load fast
- [ ] Responsive interactions

## 🔧 Troubleshooting

### If Build Fails
- [ ] Checked error message
- [ ] Verified all files saved
- [ ] Ran `npm install` again
- [ ] Cleared node_modules and reinstalled
- [ ] Checked module address is set

### If Deployment Shows Blank Page
- [ ] Checked browser console
- [ ] Verified module address
- [ ] Checked network tab for 404s
- [ ] Verified _redirects file included
- [ ] Rebuilt and redeployed

### If Wallet Won't Connect
- [ ] Petra Wallet installed
- [ ] On Devnet network
- [ ] Refreshed page
- [ ] Cleared browser cache
- [ ] Tried different browser

### If Transactions Fail
- [ ] Account has APT tokens
- [ ] On correct network (Devnet)
- [ ] Module address correct
- [ ] Contract deployed
- [ ] Using correct account

## 🎨 Optional Enhancements

### Custom Domain
- [ ] Purchased domain
- [ ] Added to Netlify
- [ ] Updated DNS records
- [ ] Verified SSL certificate
- [ ] Tested custom domain

### Site Settings
- [ ] Changed site name
- [ ] Added site description
- [ ] Configured environment variables
- [ ] Set up deploy notifications
- [ ] Enabled analytics

### Performance
- [ ] Checked Lighthouse score
- [ ] Optimized images (if any)
- [ ] Verified caching headers
- [ ] Tested on slow connection
- [ ] Checked mobile performance

## 📊 Success Metrics

### Deployment Success
- ✅ Site is live
- ✅ URL is accessible
- ✅ No errors in console
- ✅ All features work
- ✅ Wallet connects
- ✅ Transactions succeed

### User Experience
- ✅ Fast loading
- ✅ Smooth animations
- ✅ Responsive design
- ✅ Clear instructions
- ✅ Beautiful UI

### Technical Quality
- ✅ Optimized bundle
- ✅ Proper caching
- ✅ Security headers
- ✅ SSL enabled
- ✅ SPA routing works

## 🎉 Deployment Complete!

Once all items are checked:

1. **Share your URL** 🌐
2. **Test on different devices** 📱
3. **Get feedback** 💬
4. **Iterate and improve** 🔄
5. **Celebrate!** 🎊

---

## 📞 Quick Reference

**Build Command:**
```bash
npm run build
```

**Create Zip (Windows):**
```powershell
Compress-Archive -Path frontend\dist\* -DestinationPath aptos-todo-dapp-deploy.zip -Force
```

**Or Use Script:**
```bash
.\build-and-zip.bat
```

**Deploy URL:**
https://app.netlify.com/drop

---

## 📚 Related Documentation

- **Quick Deploy**: [DEPLOY_NOW.md](../DEPLOY_NOW.md)
- **Full Guide**: [NETLIFY_DEPLOYMENT.md](../NETLIFY_DEPLOYMENT.md)
- **Setup Guide**: [SETUP_GUIDE.md](../SETUP_GUIDE.md)
- **Start Here**: [START_HERE.md](../START_HERE.md)

---

**Your futuristic Aptos Todo dApp is ready for the world!** 🚀✨
