# Rendered by .github/workflows/release-build.yml into suiflex/homebrew-tap.
# Placeholders (0.44.0, https://github.com/suiflex/rdb/releases/download/v0.44.0, 68f14411a75ab4671b75e20dac9a608da18e5f0773dc6f4a6cde499523de9211, 3acde61065e1ce6af78a1a781a05794b2a2851c6542a8b47a5cfe2b8df0af312) are filled in
# via sed on each release. Edit the template, not the generated file.
#
# This cask installs the RDB.app GUI (from the release .dmg) into Applications.
# The CLI-only binary is the separate `rdb` formula.
cask "rdb" do
  version "0.44.0"

  on_arm do
    sha256 "68f14411a75ab4671b75e20dac9a608da18e5f0773dc6f4a6cde499523de9211"
    url "https://github.com/suiflex/rdb/releases/download/v0.44.0/rdb-aarch64-apple-darwin.dmg"
  end
  on_intel do
    sha256 "3acde61065e1ce6af78a1a781a05794b2a2851c6542a8b47a5cfe2b8df0af312"
    url "https://github.com/suiflex/rdb/releases/download/v0.44.0/rdb-x86_64-apple-darwin.dmg"
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
