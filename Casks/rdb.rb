# Rendered by .github/workflows/release-build.yml into suiflex/homebrew-tap.
# Placeholders (0.47.0, https://github.com/suiflex/rdb/releases/download/v0.47.0, d1972239b31d73f21d8033384eb787edace199f7eff45bc7e39e858086f24d08, d180c378f4be653eb9f1621874919c9940caaa0619d85dc4a2bacbca64493c3f) are filled in
# via sed on each release. Edit the template, not the generated file.
#
# This cask installs the RDB.app GUI (from the release .dmg) into Applications.
# The CLI-only binary is the separate `rdb` formula.
cask "rdb" do
  version "0.47.0"

  on_arm do
    sha256 "d1972239b31d73f21d8033384eb787edace199f7eff45bc7e39e858086f24d08"
    url "https://github.com/suiflex/rdb/releases/download/v0.47.0/rdb-aarch64-apple-darwin.dmg"
  end
  on_intel do
    sha256 "d180c378f4be653eb9f1621874919c9940caaa0619d85dc4a2bacbca64493c3f"
    url "https://github.com/suiflex/rdb/releases/download/v0.47.0/rdb-x86_64-apple-darwin.dmg"
  end

  name "RDB"
  desc "Native cross-platform database manager (PostgreSQL, MySQL, Redis, MongoDB)"
  homepage "https://github.com/suiflex/rdb"

  app "RDB.app"

  # The .app is ad-hoc signed (no Apple Developer cert), so Gatekeeper
  # rejects it as "damaged"/"rejected by OS" once macOS re-checks the
  # quarantine flag Homebrew leaves on the download (e.g. opening via
  # Spotlight). Stripping it here is the standard cask workaround short
  # of paid notarization. See suiflex/rdb#184.
  postflight_steps do
    run "/usr/bin/xattr", args: ["-cr", "{{appdir}}/RDB.app"]
  end
end
