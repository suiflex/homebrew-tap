# Rendered by .github/workflows/release-build.yml into suiflex/homebrew-tap.
# Placeholders (0.36.0, https://github.com/suiflex/rdb/releases/download/v0.36.0, 34c805d5002ca378932a51d6acc0cc5398402b5ee85b11876179815743fc226e, 32124de0dc0061ca1362d09bc396a93834f4e8615b6314d70eaff67b262ca2b2) are filled in
# via sed on each release. Edit the template, not the generated file.
#
# This cask installs the RDB.app GUI (from the release .dmg) into Applications.
# The CLI-only binary is the separate `rdb` formula.
cask "rdb" do
  version "0.36.0"

  on_arm do
    sha256 "34c805d5002ca378932a51d6acc0cc5398402b5ee85b11876179815743fc226e"
    url "https://github.com/suiflex/rdb/releases/download/v0.36.0/rdb-aarch64-apple-darwin.dmg"
  end
  on_intel do
    sha256 "32124de0dc0061ca1362d09bc396a93834f4e8615b6314d70eaff67b262ca2b2"
    url "https://github.com/suiflex/rdb/releases/download/v0.36.0/rdb-x86_64-apple-darwin.dmg"
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
