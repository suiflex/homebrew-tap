# Rendered by .github/workflows/release-build.yml into suiflex/homebrew-tap.
# Placeholders (0.47.1, https://github.com/suiflex/rdb/releases/download/v0.47.1, ab0c3f70dde087e64919ce5dc9c6df194ee05bdb69ae79b47fec4cc6374444fa, 04e09a72e3f01515308f0f27b9272d44b740ee82f823d8a9255c70b75e4c8a28) are filled in
# via sed on each release. Edit the template, not the generated file.
#
# This cask installs the RDB.app GUI (from the release .dmg) into Applications.
# The CLI-only binary is the separate `rdb` formula.
cask "rdb" do
  version "0.47.1"

  on_arm do
    sha256 "ab0c3f70dde087e64919ce5dc9c6df194ee05bdb69ae79b47fec4cc6374444fa"
    url "https://github.com/suiflex/rdb/releases/download/v0.47.1/rdb-aarch64-apple-darwin.dmg"
  end
  on_intel do
    sha256 "04e09a72e3f01515308f0f27b9272d44b740ee82f823d8a9255c70b75e4c8a28"
    url "https://github.com/suiflex/rdb/releases/download/v0.47.1/rdb-x86_64-apple-darwin.dmg"
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
  postflight_steps do
    run "/usr/bin/xattr", args: ["-cr", "{{appdir}}/RDB.app"]
  end
end
