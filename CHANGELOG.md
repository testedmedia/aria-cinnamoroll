# Changelog - Aria's Sanrio Adventure (Flappy Cinnamoroll)

## v10.24 - iOS Bug Fix & Polish (2026-02-13)
- FIXED: Collection/Trophies X button unresponsive on iPhones with Dynamic Island (moved below safe area)
- FIXED: Share card Wordle grid always showing blank white squares (sessionCollected type mismatch)
- FIXED: Screenshot grid always grey (same type mismatch in screenshot generator)
- FIXED: Near-miss "SO CLOSE!" dual rendering with conflicting timers/colors (removed duplicate block)
- FIXED: Blind box reveal massively zoomed on HiDPI devices (DPR double-scaling on cache)
- FIXED: Tapping UI buttons during gameplay also triggered jump (removed redundant click handler)
- FIXED: "Reset Progress" nuked device ID and cloud identity (now preserves device_id, language, SFX)
- FIXED: Donut holes punching transparent holes through other game elements (destination-out replaced)
- FIXED: Friend code input using prompt() which fails in WKWebView (replaced with DOM input)
- FIXED: Touch handler missing return after collection handleTap (could cause double-processing)
- FIXED: Audio unlock listeners firing on every touch forever (changed to once:true)
- FIXED: Shower items appearing instantly without pop-in animation (added spawnScale:0)
- FIXED: Game loop silently swallowing all errors (now logs to console)
- IMPROVED: All close buttons enlarged and moved for better iOS touch targets
- IMPROVED: Collection close now properly unpauses gameplay
- iOS: App builds clean on Xcode 26.2 / Capacitor 8.1 / iPhone 17 Pro simulator

## v10.23 - Social & Viral Features (2026-02-13)
- NEW: Friend System - add friends by 6-character code, view friends list, remove friends
- NEW: Screenshot Sharing - generate score card image, share via Web Share API or download
- NEW: Leaderboard Tabs - Global, Friends, and Weekly leaderboards (top 50)
- NEW: Referral System - share referral links, +5 stars for referrer, +3 for referee (max 50)
- NEW: Lucky Spin accessible from main menu (Row 4 button)
- NEW: Cloud Save - progress syncs to Supabase automatically
- NEW: Device Identity - anonymous player profile with friend code
- NEW: Anti-cheat - SHA256 score hashing, rate limiting, plausibility checks
- NEW: Friend beat notification toast on results screen
- NEW: "Referral King" achievement for 10 successful referrals
- NEW: Service Worker for offline support and push notifications
- NEW: Events SOP document for standardized seasonal event creation
- IMPROVED: Leaderboard now shows 50 entries (was 20) with friend codes
- IMPROVED: Share overlay now includes screenshot button
- IMPROVED: Referral URL uses friend codes instead of player names
- IMPROVED: Generic isEventActive(tag) helper replaces individual event checks
- BACKEND: Supabase sanrio_players, sanrio_scores, sanrio_friendships, sanrio_referrals tables
- BACKEND: Row-level security policies on all new tables
- BACKEND: Score period triggers for weekly/monthly leaderboard partitioning

## v10.22 - Remove Background Music (2026-02-12)
- Removed background music from gameplay entirely
- Removed music toggle from settings screen
- Cleaner settings layout (SFX, Language, Name, Stats, Reset)

## v10.21 - Visual Polish Pack (2026-02-12)
- Screen transitions: pink fade between menu/gameplay/results
- Score count-up animation on results screen (ticks from 0 to final)
- Catch burst rings: expanding ring pulse on every item catch
- Item spawn pop-in: items scale from 0 with ease-out cubic
- Power-up expiry warning: screen edge flash when magnet/2x/shield about to expire
- Combo-scaled burst rings (bigger at 5x+ combo)

## v10.20 - Bug Fixes (2026-02-12)
- Fixed: Backpack button now opens collection during gameplay
- Fixed: Removed duplicate pause/sound buttons from HUD
- Fixed: Background music now properly initializes AudioContext
- Increased BGM volume (was nearly inaudible)
- Single clean pause button (top-right circle)

## v10.19 - Remove Onboarding, Clean What's New (2026-02-12)
- Removed onboarding welcome carousel (goes straight to game)
- What's New screen restored to clean version update style
- No more extra screens blocking gameplay on launch

## v10.18 - Gameplay HUD Upgrade (2026-02-12)
- In-game music toggle icon (tap to mute/unmute during gameplay)
- Enhanced combo counter: fire emojis at 10x+, rainbow background at 15x+
- Pause button moved to top-right with cleaner pill design
- "Rate Us" prompt after new high scores (3+ games played, non-intrusive)
- Rate prompt with star display, Rate/Maybe Later buttons
- Music toggle persists to localStorage

## v10.17 - Onboarding Priority Fix (2026-02-12)
- Fixed: Onboarding now renders ABOVE daily login calendar (was being hidden)
- Fixed: Login calendar suppressed during onboarding flow
- Onboarding carousel properly shows on first-ever launch

## v10.16 - Settings & Onboarding (2026-02-12)
- Full settings screen accessible from gear icon on menu
- Sound effects toggle (on/off with pill switch)
- Background music toggle (on/off)
- Language switch (EN/ES) in settings panel
- Change name button in settings
- Player stats display (best score, stars, games played)
- Reset all progress option (with confirmation)
- 3-slide onboarding welcome carousel for new players
- Onboarding auto-shows on first visit, skippable
- Settings persisted to localStorage

## v10.15 - Premium Game Juice (2026-02-12)
- Background music: chill kawaii lo-fi synth loop during gameplay
- Achievement unlock popups: gold banner slides down with badge + name
- Fever mode visuals: rainbow border glow + pulsing vignette during Hello Kitty Shower
- Speed lines: white streaks appear at 8x+ combo (intensity scales with combo)
- Near-miss "SO CLOSE!" feedback when rare+ items barely missed
- BGM auto-starts on play, stops on game over

## v10.14 - Results Screen Revamp (2026-02-12)
- "Play Again" now instantly starts a new game (no more going back to menu)
- New "Main Menu" button on results screen for returning to home
- Collection button repositioned below Main Menu
- Better button layout with proper spacing

## v10.13 - Leaderboard Fix + Event Button Sync (2026-02-12)
- Fixed: Menu button tap zones now sync with event banners (leaderboard, shop, etc.)
- Fixed: Multiple simultaneous events properly offset all interactive elements
- All buttons (Blind Box, Collection, Shop, Leaderboard, Challenges, Outfits) now correctly tappable during events

## v10.12 - Girl Scout Cookie Day Event (2026-02-12)
- 24-HOUR Girl Scout Cookie Day event (Feb 12 only!)
- 6 LIMITED exclusive items only available today:
  - Thin Mint Boba (epic), Samoa Cookie Treat (rare)
  - Cookie Scout Cinnamoroll (legendary), Tagalong Hello Kitty (epic)
  - S'mores Pompompurin (legendary), Lemonade My Melody (epic)
- Green cookie-themed background with floating cookie/treat particles
- Girl Scout event banner with live hours+minutes countdown
- Multiple simultaneous events supported (Girl Scout + Valentine overlap)
- Girl Scout collection tab (cookie emoji filter)
- Green-themed title, play button, and UI accents during event

## v10.11 - Retina HD Graphics (2026-02-12)
- Retina/HiDPI canvas rendering at device pixel ratio (up to 3x)
- Crispy text, smooth edges, and sharp graphics on all iPhone/iPad displays
- High-quality image smoothing enabled for all sprites
- Anti-aliased font rendering (-webkit-font-smoothing)
- Pink background (#ffe0ec) visible during canvas load
- Fixed blind box reveal cache for DPR-scaled canvas

## v10.10 - Girl Scouts Update (2026-02-12)
- 4 new Girl Scout outfits: Scout Beret (free), Scout Sash (free), Cookie Hat (free), Trefoil Crown (15 stars)
- 20 total outfits now available
- Fixed: Back/Close buttons enlarged and moved up for iOS safe area (home indicator)
- All X close buttons have larger hit areas for better touch response
- iOS app compatibility improvements

## v10.9 - Outfit Economy + Custom Avatar (2026-02-11)
- 16 outfits with 6 unlock types: free, milestone, shop, achievement, blind box, seasonal
- Custom avatar upload: use your own photo as the in-game character
- 10 new canvas-drawn outfits: Chef Hat, Pirate Bandana, Flower Crown, Golden Crown, Rainbow Aura, Angel Wings, Devil Horns, Valentine Crown, Spring Bunny, Summer Shades
- Star Shop outfit purchases (40-75 stars)
- Blind Box exclusive outfit drops (8% chance): Angel Wings, Devil Horns
- Achievement auto-unlock outfits: Golden Crown (50k score), Rainbow Aura (collect all)
- Seasonal time-gated outfits: Valentine Crown (Feb), Spring Bunny (Mar-May), Summer Shades (Jun-Aug)
- Scrollable outfit selector with rarity badges and unlock requirement text
- Gender selection on signup (Girl/Boy)
- Name change accessible via settings gear anytime
- Outfit overlays render on top of custom avatars
- Save data migration: auto-populates unlocked outfits from existing progress

## v10.1 - Collection Card Overhaul
- Full-width images on collection cards
- Kawaii pastel card design

## v10.0 - Cute Static Collection Background
- Pink gradient with hearts and sparkles
- Zero animation for performance

## v9.9 - Solid Static Blind Box Screen
- No animated background or rainbow cycling

## v9.8 - Static Collection Screen
- Smaller Valentine banner, static collection layout

## v9.7 - Freeze Collection Screen
- Zero animation/rainbow cycling on collection

## v9.6 - Kill All Blind Box Motion
- Removed all shaking, bobbing, pulsing animations

## v9.5 - Remove Blind Box Shake + Polish Overlays

## v9.4 - Deploy Script + Overlay Polish
- Added deploy script with dual-alias support
- Spacious overlay layouts
- Fixed stale version strings

## v9.3 - Results Screen Redesign
- Clean menu style on results screen
- Fixed outfits, bigger collection characters

## v9.2 - Clean Menu Overhaul
- Removed clutter, Valentine's event as hero banner
