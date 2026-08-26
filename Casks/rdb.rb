# Rendered by .github/workflows/release-build.yml into suiflex/homebrew-tap.
# Placeholders (0.42.0, https://github.com/suiflex/rdb/releases/download/v0.42.0, 5b9002858f03d0a32bd4b5f4d3b0df055f1a31f3fd6a5beb2db0ff084abe9420, 1e5ba46845ea648fd37065c1eae57f0036c74f45711d2b7f3ca28bf92dc9b79a) are filled in
# via sed on each release. Edit the template, not the generated file.
#
# This cask installs the RDB.app GUI (from the release .dmg) into Applications.
# The CLI-only binary is the separate `rdb` formula.
cask "rdb" do
  version "0.42.0"

  on_arm do
    sha256 "5b9002858f03d0a32bd4b5f4d3b0df055f1a31f3fd6a5beb2db0ff084abe9420"
    url "https://github.com/suiflex/rdb/releases/download/v0.42.0/rdb-aarch64-apple-darwin.dmg"
  end
  on_intel do
    sha256 "1e5ba46845ea648fd37065c1eae57f0036c74f45711d2b7f3ca28bf92dc9b79a"
    url "https://github.com/suiflex/rdb/releases/download/v0.42.0/rdb-x86_64-apple-darwin.dmg"
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
