# proxy-sh

A lightweight, interactive terminal proxy manager for Linux. One-command installation, menu-driven proxy selection with persistent config storage. Only affects the current shell session.

**🌍 Now with Multilingual Support! | 现已支持多语言！**

**[📚 View Documentation in Other Languages](LANGUAGES.md)**

- [English](docs/README_EN.md)
- [中文 (简体)](docs/README_CN.md)
- [日本語](docs/README_JP.md)
- [한국어](docs/README_KO.md)

## Features

- 🚀 One-command installation
- 📋 Interactive menu interface
- 💾 Persistent proxy configuration stored locally
- 🔒 Session-isolated (doesn't affect system-wide settings)
- 🔄 Support for HTTP/HTTPS/SOCKS5 protocols
- 🌍 **Multilingual interface** (English, Chinese, Japanese, Korean)
- 🔧 Choose language on first use, change anytime from menu
- ⚡ Quick enable/disable commands

## Quick Start

```bash
curl -fsSL https://raw.githubusercontent.com/11233321323/proxy-sh/main/install.sh | bash
```

Then type `pxy` in your terminal:

```bash
pxy
```

On first use, select your preferred language. You can change it anytime from the menu.

## Installation

```bash
curl -fsSL https://raw.githubusercontent.com/11233321323/proxy-sh/main/install.sh | bash
```

Add to your shell config (`~/.bashrc`, `~/.zshrc`, etc):

```bash
export PATH="$HOME/.local/bin:$PATH"
```

## Usage

Simply type `pxy` to open the interactive menu:

```bash
pxy
```

### Menu Options

1. **Enable proxy** - Select and activate a saved proxy
2. **Add proxy** - Add a new proxy configuration
3. **List proxies** - View all saved proxies
4. **Disable proxy** - Deactivate the current proxy
5. **Status** - Check current proxy status
6. **Change language** - Switch the interface language
7. **Exit** - Close the manager

## First-Run Setup

On your first use, you'll see:

```bash
Welcome to proxy-sh! / 欢迎使用 proxy-sh! / proxy-sh へようこそ！/ proxy-sh에 오신 것을 환영합니다!

1) English
2) 中文 (Chinese)
3) 日本語 (Japanese)
4) 한국어 (Korean)

Select language / 选择语言 / 言語を選択 / 언어を선택하세요:
```

Choose your language and the interface will display in that language.

## Example

```bash
$ pxy

=== Proxy Manager ===
1) Enable proxy
2) Add proxy
3) List proxies
4) Disable proxy
5) Status
6) Change language
7) Exit

Choose option: 2
Proxy name: work-proxy
Protocol (http/https/socks5): socks5
Host: proxy.company.com
Port: 1080
✓ Added proxy: work-proxy
```

## Configuration

Proxies are stored in `~/.config/proxy-sh/proxies.json`:

```json
{
  "proxies": [
    {
      "name": "work-proxy",
      "protocol": "socks5",
      "host": "proxy.company.com",
      "port": 1080
    }
  ]
}
```

Language preference is stored in `~/.config/proxy-sh/language.conf`.

## Requirements

- Bash 4.0+
- `jq` (for JSON parsing)
- `curl` (for installation)

## How it works

- Each time you enable a proxy, it exports environment variables (`http_proxy`, `https_proxy`, `ALL_PROXY`, etc.) to the current shell session
- These variables only affect the current terminal session and don't impact other shells or system-wide settings
- When you close the terminal, the proxy settings are automatically cleared

## Supported Languages

- English 🇬🇧
- 中文 (Simplified Chinese) 🇨🇳
- 日本語 (Japanese) 🇯🇵
- 한국어 (Korean) 🇰🇷

## License

MIT
