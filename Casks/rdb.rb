# Rendered by .github/workflows/release-build.yml into suiflex/homebrew-tap.
# Placeholders (0.39.0, https://github.com/suiflex/rdb/releases/download/v0.39.0, da13d8af7c1e636f123b5a85a18ae8da7c5155a0da7de3fd9796b7e099f978d6, 467c5e20ba0db9866b62b5c55100c56e4a56cd686da0d065a77bb34a030a3599) are filled in
# via sed on each release. Edit the template, not the generated file.
#
# This cask installs the RDB.app GUI (from the release .dmg) into Applications.
# The CLI-only binary is the separate `rdb` formula.
cask "rdb" do
  version "0.39.0"

  on_arm do
    sha256 "da13d8af7c1e636f123b5a85a18ae8da7c5155a0da7de3fd9796b7e099f978d6"
    url "https://github.com/suiflex/rdb/releases/download/v0.39.0/rdb-aarch64-apple-darwin.dmg"
  end
  on_intel do
    sha256 "467c5e20ba0db9866b62b5c55100c56e4a56cd686da0d065a77bb34a030a3599"
    url "https://github.com/suiflex/rdb/releases/download/v0.39.0/rdb-x86_64-apple-darwin.dmg"
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
