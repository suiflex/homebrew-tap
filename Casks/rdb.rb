# Rendered by .github/workflows/release-build.yml into suiflex/homebrew-tap.
# Placeholders (0.32.1, https://github.com/suiflex/rdb/releases/download/v0.32.1, 8e11edbd780994410243bfdfd6159c29d954215634ed8749219ded5ecc3f1e09, 990167a50870bbbc65c7efd52e408407cda1d6ecae6e17de1309ff7b5e260679) are filled in
# via sed on each release. Edit the template, not the generated file.
#
# This cask installs the RDB.app GUI (from the release .dmg) into Applications.
# The CLI-only binary is the separate `rdb` formula.
cask "rdb" do
  version "0.32.1"

  on_arm do
    sha256 "8e11edbd780994410243bfdfd6159c29d954215634ed8749219ded5ecc3f1e09"
    url "https://github.com/suiflex/rdb/releases/download/v0.32.1/rdb-aarch64-apple-darwin.dmg"
  end
  on_intel do
    sha256 "990167a50870bbbc65c7efd52e408407cda1d6ecae6e17de1309ff7b5e260679"
    url "https://github.com/suiflex/rdb/releases/download/v0.32.1/rdb-x86_64-apple-darwin.dmg"
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
