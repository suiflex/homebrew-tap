# Rendered by .github/workflows/release-build.yml into suiflex/homebrew-tap.
# Placeholders (0.43.0, https://github.com/suiflex/rdb/releases/download/v0.43.0, 7790ada5d7469e6ee015b425c08dc5eaaf6c5ee9a59ce0d5a193f135df7473e2, d6b30ceadf9bcf2000810d4aabe4403d22ded29d41cc7d82c68540314a6bf372) are filled in
# via sed on each release. Edit the template, not the generated file.
#
# This cask installs the RDB.app GUI (from the release .dmg) into Applications.
# The CLI-only binary is the separate `rdb` formula.
cask "rdb" do
  version "0.43.0"

  on_arm do
    sha256 "7790ada5d7469e6ee015b425c08dc5eaaf6c5ee9a59ce0d5a193f135df7473e2"
    url "https://github.com/suiflex/rdb/releases/download/v0.43.0/rdb-aarch64-apple-darwin.dmg"
  end
  on_intel do
    sha256 "d6b30ceadf9bcf2000810d4aabe4403d22ded29d41cc7d82c68540314a6bf372"
    url "https://github.com/suiflex/rdb/releases/download/v0.43.0/rdb-x86_64-apple-darwin.dmg"
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
  postflight do
    system_command "/usr/bin/xattr",
                    args: ["-cr", "#{appdir}/RDB.app"],
                    sudo: false
  end
end
