# proxy-sh - 日本語ドキュメント

軽量な Linux ターミナルプロキシマネージャー

## 機能

- 🚀 ワンコマンドインストール
- 📋 インタラクティブなメニューインターフェース
- 💾 ローカル JSON 設定ストレージ
- 🔒 セッション分離（現在のシェルのみに影響、システム全体には影響なし）
- ⚡ 複数のプロトコルをサポート（HTTP/HTTPS/SOCKS5）
- 🔄 クイック有効化/無効化コマンド

## インストール

```bash
curl -fsSL https://raw.githubusercontent.com/11233321323/proxy-sh/main/install.sh | bash
```

その後、シェル設定ファイル（`~/.bashrc`、`~/.zshrc` など）に以下を追加します：

```bash
export PATH="$HOME/.local/bin:$PATH"
```

## 使用方法

ターミナルで `pxy` と入力してインタラクティブなメニューを開きます：

```bash
pxy
```

### メニューオプション

1. **プロキシを有効にする** - 保存されたプロキシを選択して有効化
2. **プロキシを追加** - 新しいプロキシ設定を追加
3. **プロキシ一覧** - 保存されているすべてのプロキシを表示
4. **プロキシを無効にする** - 現在のプロキシを無効化
5. **状態** - 現在のプロキシ状態を確認
6. **終了** - マネージャーを閉じる

## 使用例

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
Proxy name: 会社プロキシ
Protocol (http/https/socks5): socks5
Host: proxy.company.com
Port: 1080
✓ Added proxy: 会社プロキシ
```

## 設定ファイル

プロキシ設定は `~/.config/proxy-sh/proxies.json` に保存されます：

```json
{
  "proxies": [
    {
      "name": "会社プロキシ",
      "protocol": "socks5",
      "host": "proxy.company.com",
      "port": 1080
    }
  ]
}
```

## 必要な要件

- Bash 4.0 以上
- `jq`（JSON パース用）
- `curl`（インストール用）

## 仕組み

- プロキシを有効にするたびに、スクリプトは環境変数（`http_proxy`、`https_proxy`、`ALL_PROXY` など）を現在のシェル セッションにエクスポート
- これらの変数は現在のターミナル セッションにのみ影響し、他のシェルやシステム全体の設定には影響しません
- ターミナルを閉じると、プロキシ設定は自動的にクリアされます

## ライセンス

MIT
