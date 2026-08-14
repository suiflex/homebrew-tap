# Rendered by .github/workflows/release-build.yml into suiflex/homebrew-tap.
# Placeholders (0.38.0, https://github.com/suiflex/rdb/releases/download/v0.38.0, 3553d5b628111c40064222576c8f8c8ba1e93ca40ee39e9a239a2f1428676784, cba015e9dc6924de7e131a69e671ab07fb8d686f5d02f1887fa6212dfa5dcdd6) are filled in
# via sed on each release. Edit the template, not the generated file.
#
# This cask installs the RDB.app GUI (from the release .dmg) into Applications.
# The CLI-only binary is the separate `rdb` formula.
cask "rdb" do
  version "0.38.0"

  on_arm do
    sha256 "3553d5b628111c40064222576c8f8c8ba1e93ca40ee39e9a239a2f1428676784"
    url "https://github.com/suiflex/rdb/releases/download/v0.38.0/rdb-aarch64-apple-darwin.dmg"
  end
  on_intel do
    sha256 "cba015e9dc6924de7e131a69e671ab07fb8d686f5d02f1887fa6212dfa5dcdd6"
    url "https://github.com/suiflex/rdb/releases/download/v0.38.0/rdb-x86_64-apple-darwin.dmg"
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
