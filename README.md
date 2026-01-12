# 🤖 ServiceOptimizer.AI

Stop guessing in services.msc. Use AI to safely debloat Windows, disable telemetry, and reclaim system resources for peak performance in gaming and productivity.

![Version](https://img.shields.io/badge/version-1.0-blue)
![PowerShell](https://img.shields.io/badge/PowerShell-5.1+-blue)
![License](https://img.shields.io/badge/license-MIT-green)

<img width="927" height="593" alt="image" src="https://github.com/user-attachments/assets/dde221ad-cd1c-4019-8107-4587c1e2a2fd" />
<img width="886" height="843" alt="image" src="https://github.com/user-attachments/assets/719cc1f0-9a7f-48fd-9483-1ffd00f5262f" />


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

![brave_82ArJ9lCht](https://github.com/user-attachments/assets/36d98353-8a3f-4f76-b4ff-7e99c88cdb9e)

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



