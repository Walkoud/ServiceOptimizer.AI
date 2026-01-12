# 🎨 Customization Guide

## 📝 Adding Languages

Edit `languages.json` and add a new language object:

```json
{
  "YourLanguage": {
    "Title": "Your Title",
    "HeaderTitle": "YOUR HEADER",
    "BtnBackup": "💾 BACKUP",
    ...
  }
}
```

All required keys must be present. See existing languages for reference.

## 🎨 Customizing Prompt

Edit `prompt.txt` to modify the AI prompt template.

**Available placeholders:**
- `{{PromptIntro}}` - Introduction
- `{{PromptRule}}` - Strict rule
- `{{PromptLang}}` - Language
- `{{ServiceList}}` - Service list (JSON)
- `{{XboxNote}}` - Xbox note (if enabled)
- `{{StoreNote}}` - Store note (if enabled)
- `{{CustomNote}}` - Custom note (if provided)

## 🎨 Interface Colors

Edit XAML in `index.ps1`:

**Main colors:**
```xml
Background="#0f172a"  <!-- Window background -->
Foreground="#f8fafc"   <!-- Text color -->
```

**Button colors:**
```xml
Background="#3b82f6"   <!-- Default -->
Background="#475569"   <!-- Backup -->
Background="#8b5cf6"   <!-- Prompt -->
Background="#10b981"   <!-- Import -->
```

## 🔧 Advanced

### Window Size

```xml
Height="850" Width="900"
```

### Adding Features

1. Add to XAML
2. Retrieve control: `$control = $window.FindName("controlName")`
3. Add translation to `languages.json`
4. Add event handler

## 📚 Examples

### Gaming PC

Custom note: "Keep all gaming services, disable Office/Adobe"

### Work PC

Custom note: "Keep Office/Adobe, disable gaming services"

### Minimal Setup

Custom note: "Disable everything non-essential"

---

**For more details**: Check the code in `index.ps1`
