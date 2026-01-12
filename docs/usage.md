# 📖 Usage Guide

Complete guide to using **IA Service Optimizer** to optimize your Windows services.

## 🎯 Overview

The tool follows a simple workflow:
1. **Backup** your current services
2. **Generate** an AI prompt
3. **Get recommendations** from AI
4. **Apply** the optimizations

## 📋 Step-by-Step Tutorial

### Step 1: Create a Backup 💾

**Why?** Always backup before making changes. This allows you to restore if something goes wrong.

**How to do it:**

1. Click the **"💾 BACKUP"** button
2. A CSV file will be created in the current directory
3. The file name format: `services_backup_YYYYMMDD_HHMMSS.csv`
4. A success message will appear

![Backup Process](INSERT_GIF_LINK_HERE)

**What's in the backup?**
- Service Name
- Startup Type (Automatic, Manual, Disabled)
- Current Status (Running, Stopped)

### Step 2: Generate AI Prompt 🤖

**Purpose:** Create a detailed prompt for your AI assistant (ChatGPT, Claude, etc.)

**How to do it:**

1. **Optional**: Check boxes if you don't use:
   - ☑️ Xbox services
   - ☑️ Microsoft Store

2. **Optional**: Click **"📝 CUSTOM NOTES"** to add personal instructions:
   - The text field will appear
   - Enter your custom note (e.g., "I use Adobe Creative Suite, keep those services")
   - Click the button again to hide the field

3. Click **"🤖 1. GENERATE AI PROMPT"**
4. The prompt is automatically copied to your clipboard
5. Status shows: "Prompt copied! Paste it into ChatGPT/Claude."

![Prompt Generation](INSERT_GIF_LINK_HERE)

**What to do next:**
1. Open ChatGPT, Claude, or your preferred AI
2. Paste the prompt (Ctrl+V)
3. Wait for the AI response
4. Copy the JSON response

### Step 3: Analyze AI Response 📥

**Purpose:** Import the AI recommendations and display them in the interface.

**How to do it:**

1. Copy the JSON response from the AI (should be a JSON array)
2. Click **"📥 2. ANALYZE CLIPBOARD"**
3. The interface will display service cards for each recommendation

![Analysis Process](INSERT_GIF_LINK_HERE)

**What you'll see:**
- Service cards with:
  - Service name and display name
  - Current startup type and state
  - Recommended startup type and state
  - Reason for the recommendation
  - ComboBoxes to adjust recommendations
  - "APPLY" button

**If there's an error:**
- "Clipboard does not contain valid JSON" → Make sure you copied the complete JSON array

### Step 4: Apply Recommendations ⚙️

**Purpose:** Apply the optimizations to your Windows services.

**How to do it:**

1. **Review each recommendation:**
   - Read the reason
   - Check current vs recommended settings
   - Adjust if needed using the ComboBoxes

2. **Apply changes:**
   - Click **"APPLY"** for each service
   - The button will turn **green** and show "OK !" on success
   - Current status labels update immediately

![Applying Changes](INSERT_GIF_LINK_HERE)

**Important notes:**
- ✅ Button stays clickable (you can reapply if needed)
- ✅ Button resets to blue if you change the ComboBox values
- ✅ Visual feedback shows success immediately
- ⚠️ Some services may require a restart to take effect

## 🎨 Interface Elements

### Header Section

- **💾 BACKUP**: Create service backup
- **Language selector**: Change interface language (5 languages)
- **🤖 1. GENERATE AI PROMPT**: Generate and copy prompt
- **📥 2. ANALYZE CLIPBOARD**: Import AI recommendations

### Options Section

- **Xbox checkbox**: Exclude Xbox services from optimization
- **Store checkbox**: Exclude Microsoft Store services
- **📝 CUSTOM NOTES**: Add personal instructions to AI

### Service Cards

Each card shows:
- **Title**: Display name (Service name)
- **💡 Reason**: Why this service should be optimized
- **Current Startup**: Current startup type
- **Current State**: Current service status
- **Recommended**: ComboBoxes to adjust recommendations
- **APPLY button**: Apply the changes

### Status Bar

Bottom of the window shows:
- Current status messages
- Success/error notifications

## 🔧 Advanced Features

### Custom Notes

Add specific instructions for the AI:

1. Click **"📝 CUSTOM NOTES"**
2. Text field appears
3. Enter your note (e.g., "Keep all Adobe services running")
4. The note will be added to the prompt
5. Click the button again to hide the field

**Example custom notes:**
- "I use Adobe Creative Suite daily"
- "Keep all gaming-related services"
- "I don't use any VPN software"

### Adjusting Recommendations

Before applying, you can adjust recommendations:

1. Use the **Startup** ComboBox:
   - Automatic
   - Manual
   - Disabled

2. Use the **State** ComboBox:
   - Running
   - Stopped

3. The button resets to blue when you change values
4. Click "APPLY" to apply your changes

### Language Switching

Change interface language anytime:

1. Click the **Language** dropdown
2. Select your preferred language
3. Interface updates immediately
4. All text, buttons, and messages are translated

## ⚠️ Important Warnings

### Before Applying

- ✅ **Always backup first** - Use the backup button
- ✅ **Review recommendations** - Make sure they make sense
- ✅ **Check critical services** - Don't disable essential Windows services
- ⚠️ **Administrator rights** - Required to modify services

### Services to Be Careful With

**DO NOT disable these unless you're sure:**
- Windows Update services
- Security services (Windows Defender, etc.)
- Network services (if you use network features)
- Audio services (if you need sound)

### After Applying

- Some changes require a **restart** to take effect
- Monitor your system for any issues
- Use the backup to restore if needed

## 🔄 Workflow Example

Here's a complete example workflow:

```
1. Launch gemini.ps1
   ↓
2. Click "💾 BACKUP"
   → services_backup_20260112_210000.csv created
   ↓
3. Check "I don't use Xbox services"
   ↓
4. Click "📝 CUSTOM NOTES"
   → Enter: "Keep all Adobe services"
   ↓
5. Click "🤖 1. GENERATE AI PROMPT"
   → Prompt copied to clipboard
   ↓
6. Paste in ChatGPT
   → Get JSON response
   ↓
7. Copy JSON response
   ↓
8. Click "📥 2. ANALYZE CLIPBOARD"
   → 15 recommendations displayed
   ↓
9. Review each card
   → Adjust if needed
   ↓
10. Click "APPLY" for each service
    → Buttons turn green
    → Services optimized!
```

## 🐛 Troubleshooting

### No recommendations appear

**Possible causes:**
- JSON format is incorrect
- Clipboard is empty
- All services are already optimized

**Solution:**
- Verify JSON format
- Make sure you copied the complete response
- Check that the AI returned recommendations

### "APPLY" button doesn't work

**Possible causes:**
- No administrator rights
- Service name is incorrect
- Service is protected

**Solution:**
- Run PowerShell as administrator
- Check service name in the card
- Some services cannot be modified

### Button stays blue after clicking

**Possible causes:**
- Error occurred (check error message)
- Service couldn't be modified

**Solution:**
- Check the error message
- Verify administrator rights
- Check if service exists

## 📝 Tips & Best Practices

1. **Always backup first** - Safety first!
2. **Review before applying** - Understand what will change
3. **Test after changes** - Make sure everything works
4. **Keep backups** - Don't delete backup files immediately
5. **Use custom notes** - Help AI understand your needs
6. **Adjust recommendations** - You know your system best

## 🎉 You're Ready!

You now know how to use IA Service Optimizer. Start optimizing your Windows services!

---

**Next steps:**
- [⚙️ How It Works](how-it-works.md) - Understand the technical details
- [🎨 Customization](customization.md) - Customize the tool
