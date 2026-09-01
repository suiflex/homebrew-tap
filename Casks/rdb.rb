# Rendered by .github/workflows/release-build.yml into suiflex/homebrew-tap.
# Placeholders (0.44.1, https://github.com/suiflex/rdb/releases/download/v0.44.1, e517c54cf917422aa660d0ba919a99568e84ef2be231ced4fe2a9e77b2d9568c, f6b94d94bb0c3f8c8f79a77046d7b2f5ee6bc5adcc025907bde0eadcc233ec08) are filled in
# via sed on each release. Edit the template, not the generated file.
#
# This cask installs the RDB.app GUI (from the release .dmg) into Applications.
# The CLI-only binary is the separate `rdb` formula.
cask "rdb" do
  version "0.44.1"

  on_arm do
    sha256 "e517c54cf917422aa660d0ba919a99568e84ef2be231ced4fe2a9e77b2d9568c"
    url "https://github.com/suiflex/rdb/releases/download/v0.44.1/rdb-aarch64-apple-darwin.dmg"
  end
  on_intel do
    sha256 "f6b94d94bb0c3f8c8f79a77046d7b2f5ee6bc5adcc025907bde0eadcc233ec08"
    url "https://github.com/suiflex/rdb/releases/download/v0.44.1/rdb-x86_64-apple-darwin.dmg"
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
