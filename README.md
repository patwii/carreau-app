# Carreau.app Root Domain

This is a simple landing page for the root domain `carreau.app` with AdSense verification.

## Files

- `index.html` - Landing page with AdSense verification meta tag
- `ads.txt` - AdSense ads.txt file
- `README.md` - This file

## Deployment Options

### Option 1: Netlify (Recommended - Easiest)

1. Go to https://app.netlify.com/drop
2. Drag and drop this `root-domain` folder
3. Once deployed, click "Domain settings"
4. Add custom domain: `carreau.app`
5. Follow Netlify's DNS instructions

**DNS Settings for Netlify:**
```
Type: A
Name: @
Value: 75.2.60.5

Type: CNAME  
Name: www
Value: [your-site-name].netlify.app
```

### Option 2: GitHub Pages

1. Create a new GitHub repository (e.g., `carreau-root`)

2. Initialize and push:
   ```bash
   cd root-domain
   git init
   git add .
   git commit -m "Initial commit"
   git remote add origin https://github.com/YOUR_USERNAME/carreau-root.git
   git branch -M main
   git push -u origin main
   ```

3. Enable GitHub Pages:
   - Go to repo Settings → Pages
   - Source: Deploy from `main` branch, `/` (root)
   - Custom domain: `carreau.app`
   - Save

4. Update DNS:
   ```
   Type: A
   Name: @
   Value: 185.199.108.153
   
   Type: A
   Name: @
   Value: 185.199.109.153
   
   Type: A
   Name: @
   Value: 185.199.110.153
   
   Type: A
   Name: @
   Value: 185.199.111.153
   
   Type: CNAME
   Name: www
   Value: YOUR_USERNAME.github.io
   ```

### Option 3: Vercel

1. Install Vercel CLI:
   ```bash
   npm i -g vercel
   ```

2. Deploy:
   ```bash
   cd root-domain
   vercel
   ```

3. Follow prompts and set domain to `carreau.app`

### Option 4: Cloudflare Pages

1. Go to https://pages.cloudflare.com
2. Create new project
3. Upload files from `root-domain/`
4. Set custom domain to `carreau.app`

## After Deployment

1. **Verify files are accessible:**
   - Visit: https://carreau.app
   - Visit: https://carreau.app/ads.txt

2. **Verify in AdSense:**
   - Go to AdSense → Sites
   - Add site: `carreau.app`
   - Choose verification method
   - Click Verify

3. **Wait for approval:**
   - Usually takes 1-2 weeks
   - You'll receive an email when approved

## DNS Configuration

Your current DNS should look like:

```
# Root domain (carreau.app)
Type: A (or CNAME to hosting provider)
Name: @
Value: [Your hosting provider's IP/domain]

# Subdomain (academy.carreau.app) - Keep existing
Type: CNAME
Name: academy
Value: [Your current academy hosting]
```

## Verification Checklist

- [ ] Root domain deployed to hosting
- [ ] https://carreau.app is accessible
- [ ] https://carreau.app/ads.txt shows AdSense publisher ID
- [ ] Meta tag visible in page source
- [ ] DNS propagated (check with https://dnschecker.org)
- [ ] Site added in AdSense as `carreau.app`
- [ ] Verification attempted in AdSense

## Troubleshooting

**"Site not accessible"**
- Wait 24-48 hours for DNS propagation
- Check DNS with: `dig carreau.app`

**"ads.txt not found"**
- Make sure `ads.txt` is in the root directory
- Check: https://carreau.app/ads.txt

**"Verification failed"**
- Clear browser cache
- Wait 10-15 minutes after deployment
- Check page source for meta tag
- Try verification again

## Quick Deploy with Netlify Drop

Fastest method (no account needed initially):

1. Go to: https://app.netlify.com/drop
2. Drag the entire `root-domain` folder
3. Wait for deployment
4. Click "Domain settings" → "Add custom domain"
5. Enter: `carreau.app`
6. Update your DNS as instructed
7. Done! ✅

After DNS propagates (5 minutes to 48 hours), verify in AdSense.

