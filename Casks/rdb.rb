# Rendered by .github/workflows/release-build.yml into suiflex/homebrew-tap.
# Placeholders (0.28.0, https://github.com/suiflex/rdb/releases/download/v0.28.0, 4e867ade139149c8b343e5a630d617dafb20dba8975703cb5b1e2014856d006d, eafd08d3261ff4698a433123aad1aa53640070095e624e50148f6d350c2c23c6) are filled in
# via sed on each release. Edit the template, not the generated file.
#
# This cask installs the RDB.app GUI (from the release .dmg) into Applications.
# The CLI-only binary is the separate `rdb` formula.
cask "rdb" do
  version "0.28.0"

  on_arm do
    sha256 "4e867ade139149c8b343e5a630d617dafb20dba8975703cb5b1e2014856d006d"
    url "https://github.com/suiflex/rdb/releases/download/v0.28.0/rdb-aarch64-apple-darwin.dmg"
  end
  on_intel do
    sha256 "eafd08d3261ff4698a433123aad1aa53640070095e624e50148f6d350c2c23c6"
    url "https://github.com/suiflex/rdb/releases/download/v0.28.0/rdb-x86_64-apple-darwin.dmg"
  end

  name "RDB"
  desc "Native cross-platform database manager (PostgreSQL, MySQL, Redis, MongoDB)"
  homepage "https://github.com/suiflex/rdb"

  app "RDB.app"
end
