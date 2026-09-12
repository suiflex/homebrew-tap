# Rendered by .github/workflows/release-build.yml into suiflex/homebrew-tap.
# Placeholders (0.46.0, https://github.com/suiflex/rdb/releases/download/v0.46.0, 6440dcf310aef745429022ecf877faa9d2df3a636a052d50c081c3f1e95eddda, d1010afb685b7f78516f4d4a9c8b56598b41637fa8890a2a209cf9b791025605) are filled in
# via sed on each release. Edit the template, not the generated file.
#
# This cask installs the RDB.app GUI (from the release .dmg) into Applications.
# The CLI-only binary is the separate `rdb` formula.
cask "rdb" do
  version "0.46.0"

  on_arm do
    sha256 "6440dcf310aef745429022ecf877faa9d2df3a636a052d50c081c3f1e95eddda"
    url "https://github.com/suiflex/rdb/releases/download/v0.46.0/rdb-aarch64-apple-darwin.dmg"
  end
  on_intel do
    sha256 "d1010afb685b7f78516f4d4a9c8b56598b41637fa8890a2a209cf9b791025605"
    url "https://github.com/suiflex/rdb/releases/download/v0.46.0/rdb-x86_64-apple-darwin.dmg"
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
