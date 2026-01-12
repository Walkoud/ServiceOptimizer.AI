# 🤖 IA Service Optimizer - Premium Edition

A modern Windows PowerShell tool with a graphical interface to optimize Windows services using Artificial Intelligence.

![Version](https://img.shields.io/badge/version-1.0-blue)
![PowerShell](https://img.shields.io/badge/PowerShell-5.1+-blue)
![License](https://img.shields.io/badge/license-MIT-green)

## 📋 Table of Contents

- [Overview](#overview)
- [Features](#features)
- [Quick Installation](#quick-installation)
- [Usage Guide](#usage-guide)
- [Full Documentation](#full-documentation)
- [Screenshots](#screenshots)
- [Requirements](#requirements)
- [Support](#support)

## 🎯 Overview

**IA Service Optimizer** is a tool that allows you to optimize Windows services by using AI (ChatGPT, Claude, etc.) to analyze and recommend the best configurations. The tool generates a detailed prompt that you can paste into your preferred AI assistant, then applies the recommendations directly from the interface.

### Why use this tool?

- ✅ **Smart optimization**: AI analyzes your services and recommends the best configurations
- ✅ **Modern interface**: WPF graphical interface with modern dark theme
- ✅ **Multilingual**: Support for 5 languages (English, French, Spanish, German, Turkish)
- ✅ **Secure**: Automatic backup before any modification
- ✅ **Customizable**: Custom notes for AI, Xbox/Store options
- ✅ **Visual feedback**: Real-time success indicators

## ✨ Features

### 🔧 Main Features

- **💾 Automatic backup**: CSV export of all your services before optimization
- **🤖 AI prompt generation**: Creates an optimized prompt for ChatGPT/Claude
- **📥 AI response analysis**: Imports and applies JSON recommendations
- **🎨 Modern interface**: Dark design with animations and visual feedback
- **🌍 Multilingual**: 5 supported languages with real-time switching
- **📝 Custom notes**: Add your own instructions to the AI
- **⚙️ Advanced options**: Xbox/Store services exclusion

### 🎨 Interface

- Modern dark theme (#0f172a)
- Service cards with detailed information
- Buttons with visual feedback (green = success)
- ComboBox to adjust recommendations
- ScrollViewer to handle many recommendations

## 🚀 Quick Installation

### Prerequisites

- Windows 10/11
- PowerShell 5.1 or higher
- Administrator rights (to modify services)

### One-Line Installation (Recommended)

Run in an elevated PowerShell (Run as Administrator):

```powershell
irm https://raw.githubusercontent.com/Walkoud/ServiceOptimizer.AI/main/install.ps1 | iex
```

Or:

```powershell
iwr -useb https://raw.githubusercontent.com/Walkoud/ServiceOptimizer.AI/main/install.ps1 | iex
```

This will:
- ✅ Download all required files automatically
- ✅ Install to `%USERPROFILE%\ServiceOptimizer.AI`
- ✅ Set up everything for you

### Manual Installation

1. **Download the files**:
   ```
   index.ps1
   languages.json
   prompt.txt
   ```

2. **Place all files in the same folder**

3. **Run the script**:
   ```powershell
   .\index.ps1
   ```

> ⚠️ **Note**: If you get a script execution error, run:
> ```powershell
> Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
> ```

> 💡 **Auto-download**: The script will automatically download missing files from GitHub if they're not found locally.

For more details, see [📖 Installation Guide](docs/installation.md)

## 📖 Usage Guide

### Complete Workflow

1. **💾 Create a backup**
   - Click "💾 BACKUP" to save the current state of your services
   - A CSV file will be created with date/time

2. **🤖 Generate AI prompt**
   - Click "🤖 1. GENERATE AI PROMPT"
   - The prompt is copied to clipboard
   - Paste it into ChatGPT, Claude or your preferred AI

3. **📥 Analyze response**
   - Copy the JSON response from the AI
   - Click "📥 2. ANALYZE CLIPBOARD"
   - Recommendations appear in the interface

4. **⚙️ Apply changes**
   - Adjust recommendations if needed
   - Click "APPLY" for each service
   - Button turns green on success

For a detailed guide, see [📚 Complete Usage Guide](docs/usage.md)

## 📚 Full Documentation

- [🔧 Installation](docs/installation.md) - Detailed installation and configuration
- [📖 Usage](docs/usage.md) - Step-by-step usage guide
- [⚙️ How It Works](docs/how-it-works.md) - Architecture and technical functioning
- [🎨 Customization](docs/customization.md) - Customize languages, prompts, etc.

## 📸 Screenshots

### Main Interface
![Main Interface](INSERT_GIF_LINK_HERE)

### Prompt Generation
![Prompt Generation](INSERT_GIF_LINK_HERE)

### Applying Recommendations
![Applying Recommendations](INSERT_GIF_LINK_HERE)

## 💻 Requirements

| Component | Minimum Version |
|-----------|------------------|
| Windows | 10 (version 1809+) or 11 |
| PowerShell | 5.1 |
| .NET Framework | 4.7.2+ (included in Windows) |
| Rights | Administrator |

## 🛠️ Project Structure

```
projectfinal/
├── gemini.ps1          # Main script
├── languages.json      # Translation file
├── prompt.txt          # AI prompt template
├── README.md           # This file
└── docs/               # Complete documentation
    ├── installation.md
    ├── usage.md
    ├── how-it-works.md
    └── customization.md
```

## 🔒 Security

- ⚠️ **Administrator rights required**: The tool modifies Windows services
- ✅ **Automatic backup**: Always backup before applying
- ✅ **Verification before application**: Tool verifies services before modification
- ✅ **Visual feedback**: Clear success/failure indicators

## 🤝 Support

For any questions or issues:
1. Check the [full documentation](docs/)
2. Review [known issues](docs/how-it-works.md#known-issues)
3. Create an issue on the repository

## 📝 License

This project is licensed under the MIT License. See the LICENSE file for more details.

## 🙏 Acknowledgments

- Modern WPF interface
- Multilingual support
- Integration with ChatGPT/Claude

---

**Made with ❤️ to optimize your Windows PC**
