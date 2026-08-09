# Rendered by .github/workflows/release-build.yml into suiflex/homebrew-tap.
# Placeholders (0.34.0, https://github.com/suiflex/rdb/releases/download/v0.34.0, 52f070e234ed3b4303c628c8ed0cff4a4f91546e8c4d5bfa554dfcb0e1ed31a4, 4de9c8b1fbc0fb6c4e6e504ea3af253bddb1e95ef756a48906d9f1ee765847bf) are filled in
# via sed on each release. Edit the template, not the generated file.
#
# This cask installs the RDB.app GUI (from the release .dmg) into Applications.
# The CLI-only binary is the separate `rdb` formula.
cask "rdb" do
  version "0.34.0"

  on_arm do
    sha256 "52f070e234ed3b4303c628c8ed0cff4a4f91546e8c4d5bfa554dfcb0e1ed31a4"
    url "https://github.com/suiflex/rdb/releases/download/v0.34.0/rdb-aarch64-apple-darwin.dmg"
  end
  on_intel do
    sha256 "4de9c8b1fbc0fb6c4e6e504ea3af253bddb1e95ef756a48906d9f1ee765847bf"
    url "https://github.com/suiflex/rdb/releases/download/v0.34.0/rdb-x86_64-apple-darwin.dmg"
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
