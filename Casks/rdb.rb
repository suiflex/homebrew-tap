# Rendered by .github/workflows/release-build.yml into suiflex/homebrew-tap.
# Placeholders (0.34.1, https://github.com/suiflex/rdb/releases/download/v0.34.1, f148e2b5ead31c5120511d0d6dc8017ff45174e97d355f03ed991c1d4d693638, a3d45f2b10190852925404df06d65d1f70d56e42c3c9fa80c027d2a40cd1c46a) are filled in
# via sed on each release. Edit the template, not the generated file.
#
# This cask installs the RDB.app GUI (from the release .dmg) into Applications.
# The CLI-only binary is the separate `rdb` formula.
cask "rdb" do
  version "0.34.1"

  on_arm do
    sha256 "f148e2b5ead31c5120511d0d6dc8017ff45174e97d355f03ed991c1d4d693638"
    url "https://github.com/suiflex/rdb/releases/download/v0.34.1/rdb-aarch64-apple-darwin.dmg"
  end
  on_intel do
    sha256 "a3d45f2b10190852925404df06d65d1f70d56e42c3c9fa80c027d2a40cd1c46a"
    url "https://github.com/suiflex/rdb/releases/download/v0.34.1/rdb-x86_64-apple-darwin.dmg"
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
