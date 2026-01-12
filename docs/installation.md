# 🔧 Installation Guide

This guide explains how to install and configure **IA Service Optimizer** on your Windows system.

## 📋 Prerequisites

Before installing, make sure you have:

- ✅ **Windows 10** (version 1809 or higher) or **Windows 11**
- ✅ **PowerShell 5.1** or higher (included in Windows 10/11)
- ✅ **Administrator rights** (required to modify services)
- ✅ **.NET Framework 4.7.2+** (usually already installed)

### Check your PowerShell version

Open PowerShell and run:

```powershell
$PSVersionTable.PSVersion
```

You should see version 5.1 or higher.

## 📥 Installation

### Method 1: One-Line Installation (Recommended) ⚡

The easiest way to install ServiceOptimizer.AI:

**Run in an elevated PowerShell (Run as Administrator):**

```powershell
irm https://raw.githubusercontent.com/Walkoud/ServiceOptimizer.AI/main/install.ps1 | iex
```

Or:

```powershell
iwr -useb https://raw.githubusercontent.com/Walkoud/ServiceOptimizer.AI/main/install.ps1 | iex
```

**What this does:**
- ✅ Downloads all required files automatically
- ✅ Installs to `%USERPROFILE%\ServiceOptimizer.AI`
- ✅ Sets up everything for you
- ✅ Optionally launches the application

**After installation:**
- Files are in: `C:\Users\YourUsername\ServiceOptimizer.AI\`
- Run: `.\index.ps1` from that folder
- Or create a shortcut to the script

### Method 2: Manual Installation

#### Step 1: Download files

Download the following files from [GitHub](https://github.com/Walkoud/ServiceOptimizer.AI):

```
📁 Your folder/
├── index.ps1          # Main script
├── languages.json     # Translation file
└── prompt.txt         # AI prompt template
```

#### Step 2: Verify file integrity

Check that all files are present:

```powershell
Test-Path index.ps1
Test-Path languages.json
Test-Path prompt.txt
```

All should return `True`.

#### Step 3: Configure execution policy

By default, Windows blocks execution of unsigned PowerShell scripts. You need to allow execution:

#### Option A: For current user only (Recommended)

```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
```

#### Option B: For all users (requires admin)

```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope LocalMachine
```

> ⚠️ **Security**: Option A is safer as it only affects your user account.

#### Step 4: Launch the application

Open PowerShell in the folder containing the files and run:

```powershell
.\index.ps1
```

Or right-click on `index.ps1` → **Run with PowerShell**.

> 💡 **Auto-download**: If files are missing, the script will automatically download them from GitHub (requires internet connection).

## 🎯 First Use

### Initial verification

On first launch, the application:

1. ✅ Checks for `languages.json`
2. ✅ Loads translations
3. ✅ Checks for `prompt.txt`
4. ✅ Displays the graphical interface

If a file is missing, an error message will be displayed.

### Initial interface

![Initial Interface](INSERT_GIF_LINK_HERE)

The interface should display:
- Title "IA SERVICE OPTIMIZER"
- Backup button
- Language selector
- Generation and analysis buttons
- Xbox/Store checkboxes
- Status area at the bottom

## ⚙️ Configuration

### Change language

1. Click on the "Language" dropdown
2. Select your preferred language
3. Interface updates automatically

Available languages:
- 🇬🇧 English
- 🇫🇷 Français
- 🇪🇸 Español
- 🇩🇪 Deutsch
- 🇹🇷 Türkçe

### Customize prompt

You can modify the prompt template in `prompt.txt`. Available placeholders:

- `{{PromptIntro}}` - Translated introduction
- `{{PromptRule}}` - Translated strict rule
- `{{PromptLang}}` - Prompt language
- `{{ServiceList}}` - Service list (JSON)
- `{{XboxNote}}` - Xbox note (if enabled)
- `{{StoreNote}}` - Store note (if enabled)
- `{{CustomNote}}` - Custom note (if filled)

## 🔍 Troubleshooting

### Error: "File 'languages.json' not found"

**Solution**: Make sure `languages.json` is in the same folder as `gemini.ps1`.

### Error: "File 'prompt.txt' not found"

**Solution**: Make sure `prompt.txt` is in the same folder as `gemini.ps1`.

### Error: "Cannot run script because execution of scripts is disabled"

**Solution**: Run the execution policy configuration command (see Step 3).

### Error: "Access denied" when applying

**Solution**: 
1. Close the application
2. Right-click on `gemini.ps1`
3. Select "Run as administrator"

### Weird characters in interface

**Solution**: Files are in UTF-8. If you see strange characters:
1. Verify that `languages.json` is in UTF-8
2. Verify that `prompt.txt` is in UTF-8
3. Relaunch the application

### Interface doesn't display

**Solution**:
1. Check that .NET Framework 4.7.2+ is installed
2. Check for errors in PowerShell
3. Try launching from PowerShell ISE to see detailed errors

## 📝 Important Notes

- ⚠️ **Always backup** before applying changes
- ⚠️ **Administrator rights** required to modify services
- ✅ **UTF-8 files** for correct display of special characters
- ✅ **Same folder**: All files must be in the same directory

## 🎉 Installation Complete

Once installation is complete, you can start using the application. Check the [Usage Guide](usage.md) to learn how to optimize your Windows services.

---

**Next step**: [📖 Usage Guide](usage.md)
