# 🔧 Installation Guide

## 📋 Prerequisites

- Windows 10/11
- PowerShell 5.1+
- Administrator rights (only needed when applying changes)

## 🚀 Quick Installation

### One-Line Installation

**Run in PowerShell:**

```powershell
irm https://raw.githubusercontent.com/Walkoud/ServiceOptimizer.AI/main/install.ps1 | iex
```

**Or (no admin required):**

```powershell
iwr -useb https://raw.githubusercontent.com/Walkoud/ServiceOptimizer.AI/main/install.ps1 | iex
```

The script will:
- Download all required files
- Install to `%USERPROFILE%\ServiceOptimizer.AI`
- Launch the application automatically

> ⚠️ **Note**: Administrator rights are only needed when applying service changes, not for installation.

## 📥 Manual Installation

1. Download files from [GitHub](https://github.com/Walkoud/ServiceOptimizer.AI):
   - `index.ps1`
   - `languages.json`
   - `prompt.txt`

2. Place all files in the same folder

3. Configure execution policy (if needed):

```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
```

4. Run:

```powershell
.\index.ps1
```

> 💡 **Auto-download**: The script automatically downloads missing files from GitHub if not found locally.

## 🔍 Troubleshooting

### Execution Policy Error

**Error**: "Cannot run script because execution of scripts is disabled"

**Solution**:
```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
```

### Missing Files

**Error**: "File 'languages.json' not found"

**Solution**: The script will auto-download missing files. Ensure you have internet connection.

### Access Denied

**Error**: "Access denied" when applying changes

**Solution**: Run PowerShell as Administrator when applying service changes.

### Weird Characters

**Issue**: Special characters display incorrectly

**Solution**: Files are UTF-8 encoded. If issues persist, re-download from GitHub.

## ✅ Verification

After installation, verify files are present:

```powershell
Test-Path index.ps1
Test-Path languages.json
Test-Path prompt.txt
```

All should return `True`.

---

**Next**: [Usage Guide](usage.md)
