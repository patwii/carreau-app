#!/bin/bash

# Deploy carreau.app root domain to GitHub Pages

echo "🚀 Deploying carreau.app root domain to GitHub Pages"
echo ""

# Get GitHub username
read -p "Enter your GitHub username: " GITHUB_USER

if [ -z "$GITHUB_USER" ]; then
    echo "❌ GitHub username is required"
    exit 1
fi

echo ""
echo "📝 Step 1: Create GitHub repository"
echo "   Go to: https://github.com/new"
echo "   Name: carreau-root"
echo "   Public repository"
echo "   Don't initialize with README"
echo ""
read -p "Press Enter when repository is created..."

echo ""
echo "📦 Step 2: Initializing git and pushing..."

# Check if git is initialized
if [ ! -d .git ]; then
    git init
fi

git add .
git commit -m "Initial commit - Carreau landing page with AdSense verification" 2>/dev/null || echo "Files already committed"

# Add remote if not exists
if ! git remote | grep -q origin; then
    git remote add origin "https://github.com/$GITHUB_USER/carreau-root.git"
fi

git branch -M main
git push -u origin main

echo ""
echo "✅ Code pushed to GitHub!"
echo ""
echo "📋 Step 3: Enable GitHub Pages"
echo "   1. Go to: https://github.com/$GITHUB_USER/carreau-root/settings/pages"
echo "   2. Under 'Source':"
echo "      - Branch: main"
echo "      - Folder: / (root)"
echo "      - Click Save"
echo "   3. Under 'Custom domain':"
echo "      - Enter: carreau.app"
echo "      - Click Save"
echo "   4. Check 'Enforce HTTPS' (after DNS propagates)"
echo ""
read -p "Press Enter when GitHub Pages is configured..."

echo ""
echo "🌐 Step 4: Update DNS for carreau.app"
echo ""
echo "   Add these A records (where you manage carreau.app DNS):"
echo ""
echo "   Type: A    Name: @    Value: 185.199.108.153"
echo "   Type: A    Name: @    Value: 185.199.109.153"
echo "   Type: A    Name: @    Value: 185.199.110.153"
echo "   Type: A    Name: @    Value: 185.199.111.153"
echo ""
echo "   Keep existing CNAME for academy subdomain:"
echo "   Type: CNAME    Name: academy    Value: $GITHUB_USER.github.io"
echo ""
read -p "Press Enter when DNS is updated..."

echo ""
echo "⏳ Step 5: Wait for DNS propagation (10-30 minutes usually)"
echo ""
echo "   Check status: https://dnschecker.org/#A/carreau.app"
echo ""
echo "   Test when ready:"
echo "   - https://carreau.app (should show landing page)"
echo "   - https://carreau.app/ads.txt (should show AdSense ID)"
echo ""
read -p "Press Enter when DNS has propagated..."

echo ""
echo "✅ Step 6: Verify in AdSense"
echo ""
echo "   1. Go to: https://www.google.com/adsense/"
echo "   2. Click 'Sites' in left menu"
echo "   3. Click 'Add site'"
echo "   4. Enter: carreau.app"
echo "   5. Click 'Verify'"
echo ""
echo "🎉 All done! Your site should be verified!"
echo ""
echo "Summary:"
echo "  - Root domain: https://carreau.app"
echo "  - Academy: https://academy.carreau.app"
echo "  - AdSense: ca-pub-2291330857070799"
echo ""

