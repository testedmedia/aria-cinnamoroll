#!/bin/bash
# Sync web files to Capacitor iOS project
# Usage: bash sync-ios.sh

set -e

SRC="/Users/jarvis/flappy-cinnamoroll"
DEST="/Users/jarvis/flappy-cinnamoroll-app/www"

echo "Syncing web files to Capacitor..."

# Copy all web assets
cp "$SRC/index.html" "$DEST/index.html"
cp "$SRC/sw.js" "$DEST/sw.js"
cp "$SRC/privacy.html" "$DEST/privacy.html"
cp "$SRC/terms.html" "$DEST/terms.html"

# Copy images if they exist in src
for img in "$SRC"/*.png; do
  [ -f "$img" ] && cp "$img" "$DEST/" 2>/dev/null
done

# Copy manifest
[ -f "$SRC/manifest.json" ] && cp "$SRC/manifest.json" "$DEST/manifest.json"

# Sync Capacitor
cd /Users/jarvis/flappy-cinnamoroll-app
npx cap sync ios

echo "✅ iOS project synced"
