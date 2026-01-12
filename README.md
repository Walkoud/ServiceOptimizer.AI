# 🤖 ServiceOptimizer.AI

AI-driven Windows Service Optimizer. Analyze system services via AI to kill background processes and lower input lag.

![Version](https://img.shields.io/badge/version-1.0-blue)
![PowerShell](https://img.shields.io/badge/PowerShell-5.1+-blue)
![License](https://img.shields.io/badge/license-MIT-green)

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

This will download all files and launch the app automatically.

> ⚠️ **Note**: Administrator rights are only needed when applying service changes, not for installation.

## ✨ Features

- **💾 Automatic backup**: CSV export before optimization
- **🤖 AI prompt generation**: Creates optimized prompts for ChatGPT/Claude
- **📥 AI response analysis**: Imports and applies JSON recommendations
- **🌍 Multilingual**: 5 languages (English, French, Spanish, German, Turkish)
- **📝 Custom notes**: Add personal instructions to AI
- **⚙️ Options**: Exclude Xbox/Store services

## 📖 How It Works

1. **Generate prompt** → Click "GENERATE AI PROMPT" (copies to clipboard)
2. **Get AI recommendations** → Paste in ChatGPT/Claude, get JSON response
3. **Import recommendations** → Click "ANALYZE CLIPBOARD"
4. **Apply changes** → Review and click "APPLY" for each service

For detailed guide, see [docs/usage.md](docs/usage.md)

## 📚 Documentation

- [Installation Guide](docs/installation.md)
- [Usage Guide](docs/usage.md)
- [How It Works](docs/how-it-works.md)
- [Customization](docs/customization.md)

## 💻 Requirements

- Windows 10/11
- PowerShell 5.1+
- Administrator rights (for applying changes)

## 🛠️ Project Structure

```
ServiceOptimizer.AI/
├── index.ps1          # Main script
├── languages.json     # Translations
├── prompt.txt         # AI prompt template
├── install.ps1        # Installation script
└── docs/              # Documentation
```

## 📝 License

MIT License - See [LICENSE](LICENSE) file

## 👤 Author

**Walkoud**

- GitHub: [@Walkoud](https://github.com/Walkoud)
- Repository: [ServiceOptimizer.AI](https://github.com/Walkoud/ServiceOptimizer.AI)

---

**Made with ❤️ to optimize your Windows PC**
