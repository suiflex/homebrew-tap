# Rendered by .github/workflows/release-build.yml into suiflex/homebrew-tap.
# Placeholders (0.40.0, https://github.com/suiflex/rdb/releases/download/v0.40.0, eb6a79d68be3d5c6e3661518598a71d29aeb1e314e8eae3529400b96f76a2119, 90b75c337b34067a700424b0ba66ee1f2d6b274298589089af5217179f55cf25) are filled in
# via sed on each release. Edit the template, not the generated file.
#
# This cask installs the RDB.app GUI (from the release .dmg) into Applications.
# The CLI-only binary is the separate `rdb` formula.
cask "rdb" do
  version "0.40.0"

  on_arm do
    sha256 "eb6a79d68be3d5c6e3661518598a71d29aeb1e314e8eae3529400b96f76a2119"
    url "https://github.com/suiflex/rdb/releases/download/v0.40.0/rdb-aarch64-apple-darwin.dmg"
  end
  on_intel do
    sha256 "90b75c337b34067a700424b0ba66ee1f2d6b274298589089af5217179f55cf25"
    url "https://github.com/suiflex/rdb/releases/download/v0.40.0/rdb-x86_64-apple-darwin.dmg"
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
