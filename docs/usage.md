# 📖 Usage Guide

## 🎯 Quick Start

1. **Backup** → Click "💾 BACKUP" to save current services
2. **Generate** → Click "🤖 1. GENERATE AI PROMPT" (copies to clipboard)
3. **Get AI response** → Paste in ChatGPT/Claude, copy JSON response
4. **Import** → Click "📥 2. ANALYZE CLIPBOARD"
5. **Apply** → Review and click "APPLY" for each service

## 📋 Detailed Steps

### Step 1: Backup

Click **"💾 BACKUP"** to create a CSV backup of all services. Always backup before making changes.

### Step 2: Generate Prompt

1. **Optional**: Check boxes for Xbox/Store if you don't use them
2. **Optional**: Click "📝 CUSTOM NOTES" to add personal instructions
3. Click **"🤖 1. GENERATE AI PROMPT"**
4. Prompt is copied to clipboard

### Step 3: Get AI Recommendations

1. Open ChatGPT, Claude, or your preferred AI
2. Paste the prompt
3. Copy the JSON response (should be a JSON array)

### Step 4: Import Recommendations

1. Click **"📥 2. ANALYZE CLIPBOARD"**
2. Service cards will appear with recommendations
3. Review each recommendation

### Step 5: Apply Changes

1. Adjust recommendations using ComboBoxes if needed
2. Click **"APPLY"** for each service
3. Button turns green on success
4. Service is optimized!

## ⚙️ Features

### Custom Notes

Add specific instructions for the AI:
- Click "📝 CUSTOM NOTES"
- Enter your note (e.g., "Keep all Adobe services")
- Note is included in the prompt

### Adjust Recommendations

Before applying, you can adjust:
- **Startup Type**: Automatic, Manual, Disabled
- **State**: Running, Stopped

### Language Switching

Change interface language anytime from the dropdown menu.

## ⚠️ Important Notes

- ✅ Always backup first
- ✅ Review recommendations before applying
- ✅ Don't disable critical Windows services
- ⚠️ Administrator rights required when applying changes
- ⚠️ Some changes may require a restart

## 🐛 Troubleshooting

### No recommendations appear

- Verify JSON format is correct
- Make sure you copied the complete response

### "APPLY" button doesn't work

- Run PowerShell as Administrator
- Check service name is correct
- Some services cannot be modified

---

**Next**: [How It Works](how-it-works.md)
