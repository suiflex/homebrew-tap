# Rendered by .github/workflows/release-build.yml into suiflex/homebrew-tap.
# Placeholders (0.46.1, https://github.com/suiflex/rdb/releases/download/v0.46.1, f56e11562bf14cce7f0b2086e4abc7da2a1f34a971b73df47cff8576142c0d73, 031d56582ce6b01eefd7e981a61e26bd86891b42486d6c23726a0942674d9590) are filled in
# via sed on each release. Edit the template, not the generated file.
#
# This cask installs the RDB.app GUI (from the release .dmg) into Applications.
# The CLI-only binary is the separate `rdb` formula.
cask "rdb" do
  version "0.46.1"

  on_arm do
    sha256 "f56e11562bf14cce7f0b2086e4abc7da2a1f34a971b73df47cff8576142c0d73"
    url "https://github.com/suiflex/rdb/releases/download/v0.46.1/rdb-aarch64-apple-darwin.dmg"
  end
  on_intel do
    sha256 "031d56582ce6b01eefd7e981a61e26bd86891b42486d6c23726a0942674d9590"
    url "https://github.com/suiflex/rdb/releases/download/v0.46.1/rdb-x86_64-apple-darwin.dmg"
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
