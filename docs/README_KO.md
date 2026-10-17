# proxy-sh - 한국어 문서

경량 Linux 터미널 프록시 관리자

## 기능

- 🚀 원클릭 설치
- 📋 대화형 메뉴 인터페이스
- 💾 로컬 JSON 설정 저장
- 🔒 세션 격리 (현재 셸에만 영향, 시스템 전체에 영향 없음)
- ⚡ 여러 프로토콜 지원 (HTTP/HTTPS/SOCKS5)
- 🔄 빠른 활성화/비활성화 명령

## 설치

```bash
curl -fsSL https://raw.githubusercontent.com/11233321323/proxy-sh/main/install.sh | bash
```

그 다음 셸 설정 파일 (`~/.bashrc`, `~/.zshrc` 등)에 다음을 추가합니다:

```bash
export PATH="$HOME/.local/bin:$PATH"
```

## 사용 방법

터미널에 `pxy`를 입력하여 대화형 메뉴를 엽니다:

```bash
pxy
```

### 메뉴 옵션

1. **프록시 활성화** - 저장된 프록시를 선택하여 활성화
2. **프록시 추가** - 새 프록시 설정 추가
3. **프록시 목록** - 저장된 모든 프록시 보기
4. **프록시 비활성화** - 현재 프록시 비활성화
5. **상태** - 현재 프록시 상태 확인
6. **종료** - 관리자 닫기

## 사용 예시

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
Proxy name: 회사프록시
Protocol (http/https/socks5): socks5
Host: proxy.company.com
Port: 1080
✓ Added proxy: 회사프록시
```

## 설정 파일

프록시 설정은 `~/.config/proxy-sh/proxies.json`에 저장됩니다:

```json
{
  "proxies": [
    {
      "name": "회사프록시",
      "protocol": "socks5",
      "host": "proxy.company.com",
      "port": 1080
    }
  ]
}
```

## 요구사항

- Bash 4.0 이상
- `jq` (JSON 파싱용)
- `curl` (설치용)

## 작동 방식

- 프록시를 활성화할 때마다 스크립트는 환경 변수 (`http_proxy`, `https_proxy`, `ALL_PROXY` 등)를 현재 셸 세션에 내보냅니다
- 이 변수들은 현재 터미널 세션에만 영향을 미치며 다른 셸이나 시스템 전체 설정에는 영향을 주지 않습니다
- 터미널을 닫으면 프록시 설정이 자동으로 제거됩니다

## 라이선스

MIT
