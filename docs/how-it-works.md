# ⚙️ How It Works

A simple guide explaining how to use **IA Service Optimizer** from start to finish.

## 🎯 Overview

IA Service Optimizer helps you optimize your Windows services using AI. The process is simple:
1. Generate a prompt with your service list
2. Get AI recommendations
3. Apply the optimizations

## 📋 Step-by-Step Process

### Step 1: Generate the AI Prompt

**What happens:**
1. Click **"🤖 1. GENERATE AI PROMPT"**
2. The tool collects all your Windows services
3. Creates a detailed prompt with:
   - Your service list (in JSON format)
   - Instructions for the AI
   - Your preferences (Xbox, Store, custom notes)
4. Copies everything to your clipboard

**What you do:**
- Open ChatGPT, Claude, or your preferred AI
- Paste the prompt (Ctrl+V)
- Wait for the AI to analyze your services

![Generate Prompt](INSERT_GIF_LINK_HERE)

### Step 2: Get AI Recommendations

**What the AI does:**
- Analyzes your service list
- Identifies services that can be optimized
- Recommends changes (startup type, state)
- Provides explanations in your language
- Returns a JSON array with recommendations

**What you do:**
- Copy the AI's JSON response
- Make sure it's a valid JSON array format

**Example AI Response:**
```json
[
  {
    "Name": "ServiceName",
    "Display": "Display Name",
    "Current_Startup": "Automatic",
    "Current_State": "Running",
    "Recommended_Startup": "Manual",
    "Recommended_State": "Stopped",
    "Reason": "This service is not needed for daily use"
  }
]
```

### Step 3: Import Recommendations

**What happens:**
1. Click **"📥 2. ANALYZE CLIPBOARD"**
2. The tool reads the JSON from your clipboard
3. Validates the JSON format
4. Creates service cards for each recommendation
5. Displays them in the interface

**What you see:**
- Service cards showing:
  - Current settings
  - Recommended settings
  - Reason for optimization
  - Options to adjust recommendations

![Import Recommendations](INSERT_GIF_LINK_HERE)

### Step 4: Apply Optimizations

**What happens:**
1. Review each recommendation
2. Adjust if needed using the dropdowns
3. Click **"APPLY"** for each service
4. The tool modifies the Windows service
5. Button turns green to confirm success

**What the tool does:**
- Changes service startup type (Automatic/Manual/Disabled)
- Starts or stops the service
- Updates the display immediately
- Shows success confirmation

![Apply Changes](INSERT_GIF_LINK_HERE)

## 🔄 Complete Workflow Example

Here's a real-world example:

### Scenario: Optimizing a Gaming PC

**1. Generate Prompt:**
```
You click "🤖 1. GENERATE AI PROMPT"
→ Prompt copied to clipboard
```

**2. Get AI Analysis:**
```
You paste in ChatGPT:
"Analyze this Windows services list for a high-performance gaming PC..."

ChatGPT responds with JSON:
[
  {
    "Name": "XboxGipSvc",
    "Display": "Xbox Accessory Management Service",
    "Current_Startup": "Automatic",
    "Current_State": "Running",
    "Recommended_Startup": "Disabled",
    "Recommended_State": "Stopped",
    "Reason": "Xbox services are not needed if you don't use Xbox"
  },
  ...
]
```

**3. Import Recommendations:**
```
You copy the JSON
Click "📥 2. ANALYZE CLIPBOARD"
→ 12 service cards appear
```

**4. Apply Changes:**
```
You review each card
Click "APPLY" on each one
→ Services are optimized
→ Buttons turn green
→ Your PC is now optimized!
```

## 🎨 Features Explained

### Backup System

**Why it's important:**
- Always backup before making changes
- Allows you to restore if needed
- CSV format for easy viewing

**How it works:**
1. Click "💾 BACKUP"
2. All services are exported to CSV
3. File is saved with timestamp
4. You can restore manually if needed

### Custom Notes

**What it does:**
- Adds your personal instructions to the AI
- Helps AI understand your specific needs
- Included in the generated prompt

**Example:**
```
Custom Note: "I use Adobe Creative Suite daily, keep those services"
```

The AI will see this and avoid disabling Adobe services.

### Language Support

**How it works:**
- All text is stored in `languages.json`
- Switch language anytime
- Prompt is generated in your language
- AI responses are in your language

### Real-time Updates

**What you see:**
- Current service status updates immediately
- Button color changes (blue → green)
- Status messages in real-time
- No need to refresh

## 🔍 Understanding the Recommendations

### Startup Types

- **Automatic**: Service starts with Windows
- **Manual**: Service starts when needed
- **Disabled**: Service doesn't start

### Service States

- **Running**: Service is currently active
- **Stopped**: Service is not running

### Why Services Are Recommended

The AI looks for:
- Unused services (Xbox, Store if you don't use them)
- OEM bloatware (manufacturer software)
- Unnecessary background processes
- Services that can be set to Manual instead of Automatic

## ⚠️ Important Notes

### Before Applying

- ✅ **Always backup first**
- ✅ **Review recommendations carefully**
- ✅ **Don't disable critical Windows services**
- ✅ **Test after applying changes**

### Services to Be Careful With

**Never disable these unless you're sure:**
- Windows Update services
- Security services (Windows Defender)
- Network services (if you use network)
- Audio services (if you need sound)

### After Applying

- Some changes require a restart
- Monitor your system for issues
- Use backup to restore if needed

## 🎯 Tips for Best Results

1. **Use Custom Notes**: Tell the AI about your specific needs
2. **Check Xbox/Store**: Uncheck if you don't use them
3. **Review Before Applying**: Make sure recommendations make sense
4. **Test After Changes**: Make sure everything still works
5. **Keep Backups**: Don't delete backup files immediately

## 🔄 Troubleshooting

### AI Doesn't Give Recommendations

**Possible reasons:**
- All services are already optimized
- Prompt wasn't clear enough
- AI didn't understand the format

**Solution:**
- Add custom notes
- Check Xbox/Store options
- Try a different AI (Claude vs ChatGPT)

### Recommendations Don't Apply

**Possible reasons:**
- No administrator rights
- Service is protected
- Service name is incorrect

**Solution:**
- Run as administrator
- Check service name
- Some services can't be modified

## 📊 What Gets Optimized

### Typical Optimizations

- **Gaming PC**: Disable Xbox, Office, unnecessary services
- **Work PC**: Disable gaming services, keep productivity tools
- **Minimal Setup**: Disable everything non-essential

### Expected Results

- **Lower input lag**: Fewer background processes
- **Faster boot**: Fewer services starting
- **Better performance**: More resources available
- **Reduced RAM usage**: Fewer running services

## 🎉 Summary

The process is simple:
1. **Generate** → Get your service list as a prompt
2. **Analyze** → Let AI recommend optimizations
3. **Apply** → Optimize your services with one click

That's it! Your Windows services are now optimized for better performance.

---

**Need help?** Check the [Usage Guide](usage.md) for detailed instructions.
