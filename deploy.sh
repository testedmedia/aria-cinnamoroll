#!/bin/bash
# Deploy script for Aria's Sanrio Adventure
# Ensures both domains get the latest version

set -e

echo "🚀 Deploying to Vercel..."
DEPLOY_URL=$(npx vercel deploy --prod 2>&1 | grep "Production:" | awk '{print $2}')

if [ -z "$DEPLOY_URL" ]; then
  echo "❌ Deploy failed - no production URL returned"
  exit 1
fi

echo "✅ Deployed: $DEPLOY_URL"

echo "🔗 Aliasing to flappy-cinnamoroll.vercel.app..."
npx vercel alias "$DEPLOY_URL" flappy-cinnamoroll.vercel.app

echo ""
echo "✅ Done! Both domains updated:"
echo "   https://aria-cinnamoroll.vercel.app"
echo "   https://flappy-cinnamoroll.vercel.app"
