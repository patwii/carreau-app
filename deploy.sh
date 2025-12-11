#!/bin/bash

echo "🚀 Deploying carreau.app to GitHub Pages"
echo ""

# Initialize git if needed
if [ ! -d .git ]; then
    echo "📦 Initializing git repository..."
    git init
fi

# Add and commit
echo "📝 Committing files..."
git add .
git commit -m "Carreau landing page with AdSense verification" 2>/dev/null || echo "Files already committed"

# Add remote if not exists
if ! git remote | grep -q origin; then
    echo "🔗 Adding GitHub remote..."
    # Use SSH instead of HTTPS
    git remote add origin git@github.com:patwii/carreau-root.git
fi

# Push
echo "⬆️  Pushing to GitHub..."
git branch -M main
git push -u origin main

echo ""
echo "✅ Deployed to GitHub!"
echo ""
echo "📋 Next steps:"
echo ""
echo "1. Enable GitHub Pages:"
echo "   https://github.com/patwii/carreau-root/settings/pages"
echo "   - Branch: main, Folder: / (root)"
echo "   - Custom domain: carreau.app"
echo ""
echo "2. Update DNS (add these A records):"
echo "   185.199.108.153"
echo "   185.199.109.153"
echo "   185.199.110.153"
echo "   185.199.111.153"
echo ""
echo "3. Wait 10-30 minutes for DNS propagation"
echo ""
echo "4. Verify in AdSense:"
echo "   https://www.google.com/adsense/"
echo "   Add site: carreau.app"
echo ""

