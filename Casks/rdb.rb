# Rendered by .github/workflows/release-build.yml into suiflex/homebrew-tap.
# Placeholders (0.37.0, https://github.com/suiflex/rdb/releases/download/v0.37.0, 868d7c0bdaa1972d5883fac42400509090ad2f02d9ce38acb5180b535a4468ba, 6cd4045d0dd83b5eadb34e5a1fbc21d2d1a573d0fcd90583d7276da890275f9b) are filled in
# via sed on each release. Edit the template, not the generated file.
#
# This cask installs the RDB.app GUI (from the release .dmg) into Applications.
# The CLI-only binary is the separate `rdb` formula.
cask "rdb" do
  version "0.37.0"

  on_arm do
    sha256 "868d7c0bdaa1972d5883fac42400509090ad2f02d9ce38acb5180b535a4468ba"
    url "https://github.com/suiflex/rdb/releases/download/v0.37.0/rdb-aarch64-apple-darwin.dmg"
  end
  on_intel do
    sha256 "6cd4045d0dd83b5eadb34e5a1fbc21d2d1a573d0fcd90583d7276da890275f9b"
    url "https://github.com/suiflex/rdb/releases/download/v0.37.0/rdb-x86_64-apple-darwin.dmg"
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
