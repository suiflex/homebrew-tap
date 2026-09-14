<p align="center">
  <img src="assets/suiflex-mark.png" alt="Suiflex" width="120">
</p>

<h1 align="center">Suiflex Homebrew Tap</h1>

<p align="center">
  <strong>Homebrew formulae and casks for Suiflex tools.<br>macOS (Apple Silicon + Intel) and Linux.</strong>
</p>

## Packages

|  | Package | Description | Install |
|---|---|---|---|
| <img src="assets/arsy-code-mark.svg" width="28"> | **arsy-code** | Local, auditable, model-independent software-engineering agent harness | `brew install suiflex/tap/arsy-code` |
| <img src="assets/rdb-mark.svg" width="28"> | **rdb** (formula) | Native, cross-platform database manager (CLI) | `brew install suiflex/tap/rdb` |
| <img src="assets/rdb-mark.svg" width="28"> | **rdb** (cask) | RDB.app GUI, installed into /Applications | `brew install --cask suiflex/tap/rdb` |
| <img src="assets/websift-logo.png" width="28"> | **websift** | Bounded web search, research, mapping, scraping, and crawling over MCP | `brew install suiflex/tap/websift` |
| <img src="assets/safehell-mark.svg" width="28"> | **safehell** | Approval-gated SSH broker for AI coding agents | `brew install suiflex/tap/safehell` |
| <img src="assets/forgeguard-mark.svg" width="28"> | **forgeguard** | Token-efficient, language-agnostic engineering guardrails for AI coding agents | `brew install suiflex/tap/forgeguard` |
| <img src="assets/fluxguard-mark.svg" width="28"> | **fluxguard** | Provider-agnostic resource awareness layer for AI coding agents | `brew install suiflex/tap/fluxguard` |
| <img src="assets/kurir-mark.svg" width="28"> | **kurir** | Portable MCP server registration and harness integration toolkit | `brew install suiflex/tap/kurir` |

Or add the tap once, then install by short name:

```bash
brew tap suiflex/tap
brew install arsy-code
brew install rdb
brew install websift
brew install suitest-mcp
brew install forgeguard
brew install safehell
brew install fluxguard
brew install kurir
```

## Package details

<details>
<summary><strong>ARSY CODE</strong> — local, auditable, model-independent software-engineering agent harness</summary>

<p align="center">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="assets/arsy-code-logo-dark.svg">
    <img src="assets/arsy-code-logo-light.svg" alt="ARSY CODE" width="280">
  </picture>
</p>

Local, auditable, model-independent software-engineering agent harness. Repository:
[suiflex/arsy-code](https://github.com/suiflex/arsy-code).

```bash
brew install suiflex/tap/arsy-code
```

Upgrade:

```bash
brew update
brew upgrade arsy-code
```

Uninstall:

```bash
brew uninstall arsy-code
```

Verify the install with:

```bash
arsy --version
```

</details>


<details>
<summary><strong>RDB</strong> — native, cross-platform database manager</summary>

<p align="center">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="assets/rdb-logo-dark.svg">
    <img src="assets/rdb-logo-light.svg" alt="RDB" width="280">
  </picture>
</p>

PostgreSQL, MySQL, Redis, MongoDB, SQLite, Cassandra. Repository:
[suiflex/rdb](https://github.com/suiflex/rdb).

Two ways to install it: the `rdb` formula gives you the CLI binary, the `rdb`
cask gives you the RDB.app desktop GUI (macOS only).

```bash
# CLI
brew install suiflex/tap/rdb

# GUI app
brew install --cask suiflex/tap/rdb
```

Upgrade:

```bash
brew update
brew upgrade rdb
brew upgrade --cask rdb
```

Uninstall:

```bash
brew uninstall rdb
brew uninstall --cask rdb
```

> Formerly published as `rdbs`. The old formula has been removed — install `rdb`
> instead. If you previously installed `rdbs`, run `brew uninstall rdbs` first.

</details>

<details>
<summary><strong>Websift</strong> — bounded web search, research, and crawling over MCP</summary>

<p align="center">
  <img src="assets/websift-logo.png" alt="Websift" width="180">
</p>

One Rust binary, no API key. Repository:
[suiflex/websift](https://github.com/suiflex/websift).

```bash
brew install suiflex/tap/websift
```

Upgrade:

```bash
brew update
brew upgrade websift
```

Uninstall:

```bash
brew uninstall websift
```

The CLI has no `--version` flag; it accepts `mcp`, `status`, `setup`, `doctor`,
and `update`. Verify the install with:


```bash
websift status
```

</details>

<details>
<summary><strong>Suitest MCP</strong> — MCP server for IDE agents</summary>

<p align="center">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="assets/suitest-logo-dark.svg">
    <img src="assets/suitest-logo-light.svg" alt="Suitest MCP" width="280">
  </picture>
</p>

MCP server for IDE agents — generate, run, and publish QA tests. Repository:
[suiflex/suitest](https://github.com/suiflex/suitest).

```bash
brew install suiflex/tap/suitest-mcp
```

Requires `node` and `uv`. `suitest-mcp`'s `lib/python.js` takes a system
`python3` when one is available and otherwise provisions an interpreter through
`uv`.

</details>


<details>
<summary><strong>SafeHell</strong> — approval-gated SSH broker for AI coding agents</summary>

<p align="center">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="assets/safehell-logo-dark.svg">
    <img src="assets/safehell-logo-light.svg" alt="SafeHell" width="280">
  </picture>
</p>

Approval-gated SSH broker for AI coding agents: credentials live in an
encrypted per-user vault, every remote command is shown in a foreground
terminal before it runs, and output is redacted before it reaches the agent.
Repository: [suiflex/SafeHell](https://github.com/suiflex/SafeHell).

```bash
brew install suiflex/tap/safehell
```

After installing, run `safehell setup` once per machine to create the vault,
then `safehell init` in each project. Verify the install with:

```bash
safehell --version
```

</details>


<details>
<summary><strong>ForgeGuard</strong> — engineering guardrails for AI coding agents</summary>

<p align="center">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="assets/forgeguard-logo-dark.svg">
    <img src="assets/forgeguard-logo-light.svg" alt="ForgeGuard" width="280">
  </picture>
</p>

Token-efficient, language-agnostic engineering guardrails for AI coding agents.
Repository: [suiflex/ForgeGuard](https://github.com/suiflex/ForgeGuard).

```bash
brew install suiflex/tap/forgeguard
```

</details>


<details>
<summary><strong>FluxGuard</strong> — provider-agnostic resource awareness layer for AI coding agents</summary>

<p align="center">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="assets/fluxguard-logo-dark.svg">
    <img src="assets/fluxguard-logo-light.svg" alt="FluxGuard" width="280">
  </picture>
</p>

Provider-agnostic resource awareness layer for AI coding agents: measures quota,
context window, request rate limits, and budget flow (flux), returning concise
execution advice so agents make cost-effective decisions and avoid unexpected
quota exhaustion. Repository: [suiflex/FluxGuard](https://github.com/suiflex/FluxGuard).

```bash
brew install suiflex/tap/fluxguard
```

Verify the install with:

```bash
fluxguard --version
```

</details>


<details>
<summary><strong>Kurir</strong> — portable MCP server registration and harness integration toolkit</summary>

<p align="center">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="assets/kurir-logo-dark.svg">
    <img src="assets/kurir-logo-light.svg" alt="Kurir" width="280">
  </picture>
</p>

Register any MCP server with agent harnesses through one portable CLI and
library: Claude Code, Claude Desktop, Cursor, VS Code, Gemini CLI, OpenCode,
Windsurf, Zed, and more. Repository: [suiflex/kurir](https://github.com/suiflex/kurir).

```bash
brew install suiflex/tap/kurir
```

Upgrade:

```bash
brew update
brew upgrade kurir
```

Uninstall:

```bash
brew uninstall kurir
```

Verify the install with:

```bash
kurir --version
```

</details>



## How it works

Every file under `Formula/` and `Casks/` is generated by a release workflow in
the tool's own repository — never hand-edited here:

| File | Generated by |
|---|---|
| `Formula/arsy-code.rb` | [`release.yml`](https://github.com/suiflex/arsy-code/blob/main/.github/workflows/release.yml) in `suiflex/arsy-code` |
| `Formula/rdb.rb`, `Casks/rdb.rb` | [`release-build.yml`](https://github.com/suiflex/rdb/blob/develop/.github/workflows/release-build.yml) in `suiflex/rdb` |
| `Formula/websift.rb` | [`release.yml`](https://github.com/suiflex/websift/blob/develop/.github/workflows/release.yml) in `suiflex/websift` |
| `Formula/safehell.rb` | [`release-build.yml`](https://github.com/suiflex/SafeHell/blob/develop/.github/workflows/release-build.yml) in `suiflex/SafeHell` |
| `Formula/suitest-mcp.rb` | [`release-mcp.yml`](https://github.com/suiflex/suitest/blob/main/.github/workflows/release-mcp.yml) in `suiflex/suitest` |
| `Formula/forgeguard.rb` | [`release.yml`](https://github.com/suiflex/ForgeGuard/blob/main/.github/workflows/release.yml) in `suiflex/ForgeGuard` |
| `Formula/fluxguard.rb` | [`release-build.yml`](https://github.com/suiflex/FluxGuard/blob/develop/.github/workflows/release-build.yml) in `suiflex/FluxGuard` |
| `Formula/kurir.rb` | [`release.yml`](https://github.com/suiflex/kurir/blob/main/.github/workflows/release.yml) in `suiflex/kurir` |

Each workflow downloads the published release artifacts, computes their
SHA-256, renders the template, and pushes the result here. **Do not hand-edit
the generated files** — changes are overwritten on the next release. Fix the
template in the source repository instead.
