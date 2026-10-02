# Rendered by .github/workflows/release-build.yml into suiflex/homebrew-tap.
# Placeholders (0.48.2, https://github.com/suiflex/rdb/releases/download/v0.48.2, 45fb55e98c3b54a713f7bcee5bc33cec11338290d66e0af8a2e2f2a0938e2fea, 1bb48d7ec4d67e5b30e502f03c09d4744985c1cfb4b9da185af4fba39d6055c9) are filled in
# via sed on each release. Edit the template, not the generated file.
#
# This cask installs the RDB.app GUI (from the release .dmg) into Applications.
# The CLI-only binary is the separate `rdb` formula.
cask "rdb" do
  version "0.48.2"

  on_arm do
    sha256 "45fb55e98c3b54a713f7bcee5bc33cec11338290d66e0af8a2e2f2a0938e2fea"
    url "https://github.com/suiflex/rdb/releases/download/v0.48.2/rdb-aarch64-apple-darwin.dmg"
  end
  on_intel do
    sha256 "1bb48d7ec4d67e5b30e502f03c09d4744985c1cfb4b9da185af4fba39d6055c9"
    url "https://github.com/suiflex/rdb/releases/download/v0.48.2/rdb-x86_64-apple-darwin.dmg"
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
