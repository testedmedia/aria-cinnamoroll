# Seasonal Event SOP - Aria's Sanrio Adventure

## Event Calendar (2026-2027)

| Event | Dates | Tag | Items | Notes |
|-------|-------|-----|-------|-------|
| Valentine's Day | Feb 10-16 | valentine | 4 | Already coded |
| Girl Scout Cookie Day | Feb 12 | girlscout | 6 | Already coded (24hr flash) |
| Cherry Blossom | Mar 1-14 | spring | 4 | Already coded |
| Easter Egg Hunt | Apr 18-21 | easter | 4 | NEW |
| Mother's Day | May 10-12 | mothersday | 3 | NEW |
| Summer Splash | Jun 15-30 | summer | 4 | Already coded |
| Back to School | Aug 25-Sep 5 | school | 4 | NEW |
| Halloween | Oct 25-Nov 1 | halloween | 4 | Already coded |
| Thanksgiving | Nov 26-28 | thanksgiving | 3 | NEW |
| Christmas | Dec 20-Jan 2 | holiday | 6 | NEW |

**Cadence**: Major event every 4-6 weeks. Every month has SOMETHING. Flash events (24hr) for FOMO 2-3x per year.

## Event Creation Checklist

### Step 1: Add EVENTS_CONFIG Entry
Copy existing pattern in `index.html` (search for `EVENTS_CONFIG`):
```javascript
{
  id: 'eventname_2026',
  name: 'Display Name',
  emoji: '🎉',
  startDate: '2026-MM-DD',
  endDate: '2026-MM-DD',
  seasonalTag: 'tagname',
  bgGradient: ['#color1','#color2','#color3','#color4'],
  accentColor: '#accent',
  bannerText: 'BANNER TEXT',
  particles: 'type' // hearts, cookies, petals, bubbles, bats, snowflakes, eggs, leaves
}
```

### Step 2: Add Seasonal Items
Add 3-6 items to `SEASON_ITEMS` array with `seasonal: 'tagname'`:
- 1-2 Rare items
- 1-2 Epic items (character-themed)
- 1 Legendary item (character-themed)
- Optional: 1 Secret item for flash events

```javascript
{ id:'event-item-id', name:'Display Name', cat:'sanrio', rarity:'rare', color:'#hex', emoji:'🎁', charKey:'cinna', seasonal:'tagname' }
```

### Step 3: (Optional) Add Collection Filter Tab
If event has 4+ items, add to `ITEM_CATEGORIES` object:
```javascript
'tagname': { name: 'Event Name', emoji: '🎉' }
```

### Step 4: (Optional) Add Particle Type
If event needs new particle effects, add case to particle rendering code.

### Step 5: (Optional) Add Themed Outfits
Add 1-2 outfits to `OUTFITS` array:
```javascript
{ id:'event_outfit', name:'Outfit Name', desc:'Event only (XX stars)', unlock:'seasonal', cost:XX, startDate:'MM-DD', endDate:'MM-DD', rarity:'epic' }
```

### Step 6: Deploy
1. Bump version in ALL 8 locations (search for current version string)
2. Update CHANGELOG.md
3. Run `bash deploy.sh <version> "<title>" "<changes>"`

## Event Design Guidelines

### Item Distribution
- **Common**: 0 per event (commons are evergreen, not seasonal)
- **Rare**: 1-2 per event (generic themed items)
- **Epic**: 1-2 per event (character-themed)
- **Legendary**: 1 per event (premium character variant)
- **Secret**: 0-1 per event (flash events only)

### Color Palette by Season
| Season | Primary | Accent | Particles |
|--------|---------|--------|-----------|
| Spring | #fff0f5 | #ff69b4 | petals |
| Summer | #e0f7fa | #00bcd4 | bubbles |
| Fall | #fff3e0 | #ff9800 | leaves |
| Winter | #e3f2fd | #42a5f5 | snowflakes |
| Valentine | #ffe0ec | #ff1493 | hearts |
| Halloween | #2d1b69 | #ff9800 | bats |
| Christmas | #c62828 | #2e7d32 | snowflakes |

### Flash Event Rules
- Duration: 24 hours only
- Must have 4+ exclusive items (FOMO driver)
- Show countdown timer in menu banner
- Higher legendary drop rate during flash events (optional)

### Testing Checklist
- [ ] Event activates on correct start date
- [ ] Event deactivates on correct end date
- [ ] Banner shows in menu during event
- [ ] Seasonal items appear in blind box during event
- [ ] Seasonal items DON'T appear outside event dates
- [ ] Collection filter shows event tab
- [ ] Seasonal outfits available only during event dates
- [ ] Event particles render correctly
- [ ] Date override works: `?forceEvent=tagname`

## Future Event Ideas
- **Lunar New Year** (Jan/Feb) - Dragon theme, red/gold palette
- **St. Patrick's Day** (Mar 17) - Flash event, green theme
- **Earth Day** (Apr 22) - Flash event, nature theme
- **Pride Month** (Jun 1-30) - Rainbow items
- **Dia de los Muertos** (Nov 1-2) - Sugar skull theme
- **New Year's** (Dec 31-Jan 1) - Flash event, sparkle theme
