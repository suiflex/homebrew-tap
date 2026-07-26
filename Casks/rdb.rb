# Rendered by .github/workflows/release-build.yml into suiflex/homebrew-tap.
# Placeholders (0.24.0, https://github.com/suiflex/rdb/releases/download/v0.24.0, a677c4e6dff47a9ef89dfa235219b9deac54a6257296d3b857caffbbe4c531d9, a0cdc804b8d0c885153f8d4a0e757d045b11e1b83f830739a9b70aaaf5b7a98d) are filled in
# via sed on each release. Edit the template, not the generated file.
#
# This cask installs the RDB.app GUI (from the release .dmg) into Applications.
# The CLI-only binary is the separate `rdb` formula.
cask "rdb" do
  version "0.24.0"

  on_arm do
    sha256 "a677c4e6dff47a9ef89dfa235219b9deac54a6257296d3b857caffbbe4c531d9"
    url "https://github.com/suiflex/rdb/releases/download/v0.24.0/rdb-aarch64-apple-darwin.dmg"
  end
  on_intel do
    sha256 "a0cdc804b8d0c885153f8d4a0e757d045b11e1b83f830739a9b70aaaf5b7a98d"
    url "https://github.com/suiflex/rdb/releases/download/v0.24.0/rdb-x86_64-apple-darwin.dmg"
  end

  name "RDB"
  desc "Native cross-platform database manager (PostgreSQL, MySQL, Redis, MongoDB)"
  homepage "https://github.com/suiflex/rdb"

  app "RDB.app"
end
