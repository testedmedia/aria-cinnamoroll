#!/bin/bash
# Deploy script for Aria's Sanrio Adventure
# Ensures both domains get the latest version

set -e

echo "Deploying to Vercel..."
OUTPUT=$(npx vercel deploy --prod 2>&1)
DEPLOY_URL=$(echo "$OUTPUT" | grep -o 'https://flappy-cinnamoroll-[a-z0-9]*-vics-projects-d6cf8c27\.vercel\.app' | tail -1)

if [ -z "$DEPLOY_URL" ]; then
  echo "Deploy failed - no production URL found"
  echo "$OUTPUT"
  exit 1
fi

echo "Deployed: $DEPLOY_URL"

echo "Aliasing to flappy-cinnamoroll.vercel.app..."
npx vercel alias "$DEPLOY_URL" flappy-cinnamoroll.vercel.app

echo ""
echo "Done! Both domains updated:"
echo "   https://aria-cinnamoroll.vercel.app"
echo "   https://flappy-cinnamoroll.vercel.app"
