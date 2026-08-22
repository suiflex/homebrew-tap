# Rendered by .github/workflows/release-build.yml into suiflex/homebrew-tap.
# Placeholders (0.41.0, https://github.com/suiflex/rdb/releases/download/v0.41.0, 87095f90ed7209c4b5e7c36ca2de6ed2ed14472fcd46f0b8407d65f1d0b05534, 75ed54ca4652fce3288b8e9a2032b7fc717cc3aaed9fd7f1dd150c650f3d6f9b) are filled in
# via sed on each release. Edit the template, not the generated file.
#
# This cask installs the RDB.app GUI (from the release .dmg) into Applications.
# The CLI-only binary is the separate `rdb` formula.
cask "rdb" do
  version "0.41.0"

  on_arm do
    sha256 "87095f90ed7209c4b5e7c36ca2de6ed2ed14472fcd46f0b8407d65f1d0b05534"
    url "https://github.com/suiflex/rdb/releases/download/v0.41.0/rdb-aarch64-apple-darwin.dmg"
  end
  on_intel do
    sha256 "75ed54ca4652fce3288b8e9a2032b7fc717cc3aaed9fd7f1dd150c650f3d6f9b"
    url "https://github.com/suiflex/rdb/releases/download/v0.41.0/rdb-x86_64-apple-darwin.dmg"
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
