# ⚙️ How It Works

Simple guide explaining how to use **ServiceOptimizer.AI**.

## 🎯 Process Overview

1. **Generate prompt** → Tool creates a prompt with your service list
2. **Get AI analysis** → AI analyzes and recommends optimizations
3. **Import recommendations** → Tool reads JSON from clipboard
4. **Apply changes** → Optimize services with one click

## 📋 Step-by-Step

### Step 1: Generate the Prompt

Click **"🤖 1. GENERATE AI PROMPT"**:
- Tool collects all Windows services
- Creates detailed prompt with service list
- Includes your preferences (Xbox, Store, custom notes)
- Copies to clipboard

**What you do:**
- Paste in ChatGPT/Claude
- Wait for AI analysis

### Step 2: Get AI Recommendations

AI returns JSON array with recommendations:

```json
[
  {
    "Name": "ServiceName",
    "Display": "Display Name",
    "Current_Startup": "Automatic",
    "Current_State": "Running",
    "Recommended_Startup": "Manual",
    "Recommended_State": "Stopped",
    "Reason": "Explanation"
  }
]
```

### Step 3: Import Recommendations

Click **"📥 2. ANALYZE CLIPBOARD"**:
- Tool reads JSON from clipboard
- Validates format
- Creates service cards
- Displays recommendations

### Step 4: Apply Optimizations

Click **"APPLY"** for each service:
- Changes startup type
- Starts/stops service
- Updates display
- Shows success (green button)

## 🔄 Complete Example

**1. Generate:**
```
Click "GENERATE AI PROMPT"
→ Prompt copied
```

**2. Get AI response:**
```
Paste in ChatGPT
→ Get JSON recommendations
```

**3. Import:**
```
Copy JSON
Click "ANALYZE CLIPBOARD"
→ Cards appear
```

**4. Apply:**
```
Click "APPLY" on each
→ Services optimized!
```

## 🎨 Features

### Backup System

Always backup before changes. CSV file saved with timestamp.

### Custom Notes

Add personal instructions. Included in prompt for AI.

### Language Support

Switch language anytime. All text translated.

### Real-time Updates

Service status updates immediately after applying.

## ⚠️ Important

### Before Applying

- ✅ Always backup first
- ✅ Review recommendations
- ✅ Don't disable critical services

### Services to Be Careful With

**Never disable:**
- Windows Update services
- Security services
- Network services (if needed)
- Audio services (if needed)

## 📊 Expected Results

- Lower input lag
- Faster boot time
- Better performance
- Reduced RAM usage

---

**Need help?** Check [Usage Guide](usage.md)
