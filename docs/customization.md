# 🎨 Customization Guide

Learn how to customize **IA Service Optimizer** to fit your needs.

## 📝 Customizing Languages

### Adding a New Language

1. **Open `languages.json`**

2. **Add a new language object:**

```json
{
  "YourLanguage": {
    "Title": "Your Title",
    "HeaderTitle": "YOUR HEADER",
    "HeaderSubtitle": "Your subtitle",
    "BtnBackup": "💾 BACKUP",
    "LblLanguage": "Language:",
    "BtnPrompt": "🤖 1. GENERATE AI PROMPT",
    "BtnImport": "📥 2. ANALYZE CLIPBOARD",
    "ChkXbox": "I don't use Xbox services",
    "ChkStore": "I don't use Microsoft Store",
    "BtnCustomNotes": "📝 CUSTOM NOTES",
    "TxtCustomNotesPlaceholder": "Enter your custom note...",
    "StatusReady": "Ready message",
    "StatusCopied": "Copied message",
    "StatusAnalyze": "{0} recommendations found.",
    "MsgBackupSuccess": "Backup created in:\n{0}",
    "MsgError": "Error",
    "MsgNoJson": "Clipboard does not contain valid JSON.",
    "LblCurrentStartup": "Current Startup:",
    "LblCurrentState": "Current State:",
    "LblRecommended": "Recommended:",
    "BtnApply": "APPLY",
    "BtnApplySuccess": "OK !",
    "PromptIntro": "Your prompt introduction",
    "PromptRule": "Your prompt rule",
    "PromptLang": "in YourLanguage"
  }
}
```

3. **Save as UTF-8**

4. **Restart the application**

The new language will appear in the dropdown!

### Required Keys

All these keys must be present:
- `Title`, `HeaderTitle`, `HeaderSubtitle`
- `BtnBackup`, `BtnPrompt`, `BtnImport`
- `ChkXbox`, `ChkStore`, `BtnCustomNotes`
- `TxtCustomNotesPlaceholder`
- `StatusReady`, `StatusCopied`, `StatusAnalyze`
- `MsgBackupSuccess`, `MsgError`, `MsgNoJson`
- `LblCurrentStartup`, `LblCurrentState`, `LblRecommended`
- `BtnApply`, `BtnApplySuccess`
- `PromptIntro`, `PromptRule`, `PromptLang`

## 🎨 Customizing the Prompt Template

### Editing `prompt.txt`

The prompt template uses placeholders that are replaced at runtime:

**Available placeholders:**
- `{{PromptIntro}}` - Introduction (from languages.json)
- `{{PromptRule}}` - Strict rule (from languages.json)
- `{{PromptLang}}` - Language (from languages.json)
- `{{ServiceList}}` - Complete service list (JSON)
- `{{XboxNote}}` - Xbox exclusion note (if checked)
- `{{StoreNote}}` - Store exclusion note (if checked)
- `{{CustomNote}}` - User's custom note (if provided)

### Example Custom Prompt

```text
{{PromptIntro}}

IMPORTANT RULES:
{{PromptRule}}

For each service that needs optimization, provide this JSON structure:
{
  "Name": "exact service name",
  "Display": "display name",
  "Current_Startup": "current type",
  "Current_State": "current state",
  "Recommended_Startup": "Automatic|Manual|Disabled",
  "Recommended_State": "Running|Stopped",
  "Reason": "explanation {{PromptLang}}"
}

Guidelines:
1. Focus on bloatware and unused services
2. Never disable critical Windows services
3. Consider user needs: {{CustomNote}}

Service List:
{{ServiceList}}

Additional Notes:
{{XboxNote}}
{{StoreNote}}
```

### Tips

- Keep placeholders exactly as shown: `{{PlaceholderName}}`
- Placeholders are case-sensitive
- Empty placeholders are removed automatically
- You can add your own text around placeholders

## 🎨 Customizing the Interface

### Changing Colors

Edit the XAML in `gemini.ps1`:

**Main colors:**
```xml
Background="#0f172a"        <!-- Window background -->
Foreground="#f8fafc"         <!-- Text color -->
```

**Button colors:**
```xml
Background="#3b82f6"         <!-- Default button -->
Background="#475569"         <!-- Backup button -->
Background="#8b5cf6"         <!-- Prompt button -->
Background="#10b981"         <!-- Import button -->
Background="#f59e0b"         <!-- Custom Notes button -->
```

**Card colors:**
```xml
Background="#1e293b"         <!-- Card background -->
BorderBrush="#334155"        <!-- Card border -->
```

### Changing Window Size

```xml
Height="850" Width="900"      <!-- Adjust as needed -->
```

### Changing Fonts

Add to XAML:
```xml
<Setter Property="FontFamily" Value="Segoe UI"/>
<Setter Property="FontSize" Value="14"/>
```

## 🔧 Advanced Customization

### Modifying Button Behavior

**Change button text:**
Edit `languages.json` → `BtnApply` value

**Change button colors:**
Edit XAML → Button Background property

**Add new buttons:**
1. Add to XAML
2. Add to control retrieval section
3. Add event handler
4. Add translation to languages.json

### Adding New Features

**Example: Add a "Restore" button**

1. **Add to XAML:**
```xml
<Button x:Name="btnRestore" Content="RESTORE" Grid.Column="6"/>
```

2. **Retrieve control:**
```powershell
$btnRestore = $window.FindName("btnRestore")
```

3. **Add translation:**
```json
"BtnRestore": "RESTORE"
```

4. **Add event handler:**
```powershell
$btnRestore.Add_Click({
    # Restore logic here
})
```

5. **Update Update-LanguageUI:**
```powershell
$btnRestore.Content = $dict.BtnRestore
```

### Customizing Service Cards

**Change card appearance:**
Edit the card creation code in `gemini.ps1` around line 222:

```powershell
$card.Background = (New-Object System.Windows.Media.BrushConverter).ConvertFromString("#1e293b")
$card.CornerRadius = 8
$card.Margin = "0,0,0,12"
```

**Add new fields:**
1. Add TextBlock to card
2. Populate from JSON data
3. Add translation key if needed

## 📁 File Structure Customization

### Organizing Files

You can organize files in subfolders, but you'll need to update paths:

```powershell
# Current
$jsonPath = Join-Path $PSScriptRoot "languages.json"

# If in subfolder
$jsonPath = Join-Path $PSScriptRoot "config\languages.json"
```

### Multiple Prompt Templates

Create different prompt files:
- `prompt-gaming.txt`
- `prompt-work.txt`
- `prompt-minimal.txt`

Then modify the function:
```powershell
$promptPath = Join-Path $PSScriptRoot "prompt-gaming.txt"
```

## 🎯 Use Cases

### Gaming PC Optimization

**Custom prompt:**
```text
Optimize for maximum gaming performance.
Keep all gaming-related services.
Disable unnecessary background services.
```

**Custom notes:**
```
Keep: Steam, Epic Games, Discord services
Disable: Office, Adobe services
```

### Work PC Optimization

**Custom prompt:**
```text
Optimize for productivity.
Keep Office, Adobe, development tools.
Disable gaming services.
```

### Minimal System

**Custom prompt:**
```text
Minimal configuration.
Disable everything non-essential.
Keep only Windows core services.
```

## 🔍 Troubleshooting Customizations

### Language Not Appearing

- Check JSON syntax (use a validator)
- Ensure all required keys are present
- Verify UTF-8 encoding
- Check language name matches exactly

### Prompt Not Working

- Verify placeholder syntax: `{{PlaceholderName}}`
- Check placeholder names match exactly
- Ensure file is UTF-8 encoded
- Verify file path is correct

### UI Not Updating

- Restart application after changes
- Check XAML syntax
- Verify control names match
- Check for PowerShell errors

## 📚 Best Practices

1. **Backup before customizing** - Keep original files
2. **Test changes** - Test each modification
3. **Use UTF-8** - For all text files
4. **Validate JSON** - Use a JSON validator
5. **Document changes** - Note what you changed
6. **Version control** - Use Git if possible

## 🎓 Examples

### Example 1: Add Darker Theme

```xml
<!-- In XAML -->
Background="#0a0f1a"  <!-- Darker background -->
Foreground="#e2e8f0"  <!-- Lighter text -->
```

### Example 2: Larger Window

```xml
Height="1000" Width="1200"
```

### Example 3: Custom Button Style

```xml
<Style x:Key="CustomBtn" TargetType="Button">
    <Setter Property="Background" Value="#ef4444"/>
    <Setter Property="FontSize" Value="16"/>
</Style>
```

---

**Need help?** Check the [Usage Guide](usage.md) or [How It Works](how-it-works.md)
