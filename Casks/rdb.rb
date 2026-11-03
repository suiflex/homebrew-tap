# Rendered by .github/workflows/release-build.yml into suiflex/homebrew-tap.
# Placeholders (0.50.1, https://github.com/suiflex/rdb/releases/download/v0.50.1, 4daeeba98a216cbf0870d73496303286f1fd4edd4a1f880ab20838c6289c600e, eb890a749ef8ff6fa9233ca6f6aa50d99a5aa92d4f3c1afe93cb7658dd0696ef) are filled in
# via sed on each release. Edit the template, not the generated file.
#
# The signed RDB.app remains the desktop application; the bundle also carries
# the standalone CLI and MCP server binaries used by the terminal workflows.
cask "rdb" do
  version "0.50.1"

  on_arm do
    sha256 "4daeeba98a216cbf0870d73496303286f1fd4edd4a1f880ab20838c6289c600e"
    url "https://github.com/suiflex/rdb/releases/download/v0.50.1/rdb-aarch64-apple-darwin.dmg"
  end
  on_intel do
    sha256 "eb890a749ef8ff6fa9233ca6f6aa50d99a5aa92d4f3c1afe93cb7658dd0696ef"
    url "https://github.com/suiflex/rdb/releases/download/v0.50.1/rdb-x86_64-apple-darwin.dmg"
  end

  name "RDB"
  desc "Native cross-platform database manager (PostgreSQL, MySQL, Redis, MongoDB)"
  homepage "https://github.com/suiflex/rdb"

  app "RDB.app"
  binary "#{appdir}/RDB.app/Contents/MacOS/rdb-cli"
  binary "#{appdir}/RDB.app/Contents/MacOS/rdb-mcp"

  # The .app is ad-hoc signed (no Apple Developer cert), so Gatekeeper
  # rejects it as "damaged"/"rejected by OS" once macOS re-checks the
  # quarantine flag Homebrew leaves on the download (e.g. opening via
  # Spotlight). Stripping it here is the standard cask workaround short
  # of paid notarization. See suiflex/rdb#184.
  postflight_steps do
    run "/usr/bin/xattr", args: ["-cr", "{{appdir}}/RDB.app"]
  end
end
