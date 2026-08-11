# Rendered by .github/workflows/release-build.yml into suiflex/homebrew-tap.
# Placeholders (0.35.0, https://github.com/suiflex/rdb/releases/download/v0.35.0, c39f9d6260c05c0060ce2d04cd0b6db7d363e3882f1086b0abf8e66017f178f4, a45eef81d920a5c443465802ece4e9dd6ddbf352c5b3981a7c38f28aaf539499) are filled in
# via sed on each release. Edit the template, not the generated file.
#
# This cask installs the RDB.app GUI (from the release .dmg) into Applications.
# The CLI-only binary is the separate `rdb` formula.
cask "rdb" do
  version "0.35.0"

  on_arm do
    sha256 "c39f9d6260c05c0060ce2d04cd0b6db7d363e3882f1086b0abf8e66017f178f4"
    url "https://github.com/suiflex/rdb/releases/download/v0.35.0/rdb-aarch64-apple-darwin.dmg"
  end
  on_intel do
    sha256 "a45eef81d920a5c443465802ece4e9dd6ddbf352c5b3981a7c38f28aaf539499"
    url "https://github.com/suiflex/rdb/releases/download/v0.35.0/rdb-x86_64-apple-darwin.dmg"
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
