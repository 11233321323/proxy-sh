# proxy-sh - English Documentation

Lightweight Linux Terminal Proxy Manager

## Features

- 🚀 One-command installation
- 📋 Interactive menu interface
- 💾 Persistent proxy configuration stored locally
- 🔒 Session-isolated (only affects current shell, no system-wide impact)
- ⚡ Support for multiple protocols (HTTP/HTTPS/SOCKS5)
- 🔄 Quick enable/disable commands

## Installation

```bash
curl -fsSL https://raw.githubusercontent.com/11233321323/proxy-sh/main/install.sh | bash
```

Then add to your shell config (`~/.bashrc`, `~/.zshrc`, etc):

```bash
export PATH="$HOME/.local/bin:$PATH"
```

## Usage

Type `pxy` to open the interactive menu:

```bash
pxy
```

### Menu Options

1. **Enable proxy** - Select and activate a saved proxy
2. **Add proxy** - Add a new proxy configuration
3. **List proxies** - View all saved proxies
4. **Disable proxy** - Deactivate the current proxy
5. **Status** - Check current proxy status
6. **Exit** - Close the manager

## Example

```bash
$ pxy

=== Proxy Manager ===
1) Enable proxy
2) Add proxy
3) List proxies
4) Disable proxy
5) Status
6) Exit

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

## Requirements

- Bash 4.0+
- `jq` (for JSON parsing)
- `curl` (for installation)

## How It Works

- Each time you enable a proxy, it exports environment variables (`http_proxy`, `https_proxy`, `ALL_PROXY`, etc.) to the current shell session
- These variables only affect the current terminal session and don't impact other shells or system-wide settings
- When you close the terminal, the proxy settings are automatically cleared

## License

MIT
