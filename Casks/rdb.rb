# Rendered by .github/workflows/release-build.yml into suiflex/homebrew-tap.
# Placeholders (0.45.0, https://github.com/suiflex/rdb/releases/download/v0.45.0, 0a12be06bcf7c1b72521a5370766e6eb2426680d6732f60cfdfb68f47a2866e3, 13a6132a5eb8c9c13c0f36c20585bd2293c754b1f5be7c92f49d76267d981c27) are filled in
# via sed on each release. Edit the template, not the generated file.
#
# This cask installs the RDB.app GUI (from the release .dmg) into Applications.
# The CLI-only binary is the separate `rdb` formula.
cask "rdb" do
  version "0.45.0"

  on_arm do
    sha256 "0a12be06bcf7c1b72521a5370766e6eb2426680d6732f60cfdfb68f47a2866e3"
    url "https://github.com/suiflex/rdb/releases/download/v0.45.0/rdb-aarch64-apple-darwin.dmg"
  end
  on_intel do
    sha256 "13a6132a5eb8c9c13c0f36c20585bd2293c754b1f5be7c92f49d76267d981c27"
    url "https://github.com/suiflex/rdb/releases/download/v0.45.0/rdb-x86_64-apple-darwin.dmg"
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
