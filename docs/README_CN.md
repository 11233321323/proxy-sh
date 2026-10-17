# proxy-sh - 中文文档

轻量级 Linux 终端代理管理器 | Lightweight Linux Terminal Proxy Manager

## 功能特性

- 🚀 一键安装
- 📋 交互式菜单界面
- 💾 本地 JSON 配置存储
- 🔒 会话隔离（只影响当前 shell，不污染系统）
- ⚡ 支持多种协议（HTTP/HTTPS/SOCKS5）
- 🔄 快速启用/禁用代理

## 安装

```bash
curl -fsSL https://raw.githubusercontent.com/11233321323/proxy-sh/main/install.sh | bash
```

然后在 shell 配置文件 (`~/.bashrc`、`~/.zshrc` 等) 中添加：

```bash
export PATH="$HOME/.local/bin:$PATH"
```

## 使用方法

在终端输入 `pxy` 打开交互式菜单：

```bash
pxy
```

### 菜单选项

1. **启用代理** - 选择并激活已保存的代理
2. **添加代理** - 添加新的代理配置
3. **列表** - 查看所有已保存的代理
4. **禁用代理** - 关闭当前代理
5. **状态** - 检查当前代理状态
6. **退出** - 关闭管理器

## 使用示例

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
Proxy name: 公司代理
Protocol (http/https/socks5): socks5
Host: proxy.company.com
Port: 1080
✓ Added proxy: 公司代理
```

## 配置文件

代理配置保存在 `~/.config/proxy-sh/proxies.json`：

```json
{
  "proxies": [
    {
      "name": "公司代理",
      "protocol": "socks5",
      "host": "proxy.company.com",
      "port": 1080
    }
  ]
}
```

## 系统要求

- Bash 4.0+
- `jq` (JSON 解析)
- `curl` (安装脚本)

## 工作原理

- 每次启用代理时，脚本会将环境变量 (`http_proxy`、`https_proxy`、`ALL_PROXY` 等) 导出到当前 shell session
- 这些变量仅影响当前终端会话，不会影响其他 shell 或系统全局设置
- 关闭终端时，代理设置会自动清除

## 许可证

MIT
