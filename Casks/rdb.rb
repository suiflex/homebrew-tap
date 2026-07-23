# Rendered by .github/workflows/release-build.yml into suiflex/homebrew-tap.
# Placeholders (0.22.0, https://github.com/suiflex/rdb/releases/download/v0.22.0, dbcc10fb9c9a0d2e1cef32f809cf92aa13cb7638b89a47ead6e469f27a3065ad, 83f67efcd9fb2c4de33c85ccfe72e2575177abc244079522963e0decba5ca86b) are filled in
# via sed on each release. Edit the template, not the generated file.
#
# This cask installs the RDB.app GUI (from the release .dmg) into Applications.
# The CLI-only binary is the separate `rdb` formula.
cask "rdb" do
  version "0.22.0"

  on_arm do
    sha256 "dbcc10fb9c9a0d2e1cef32f809cf92aa13cb7638b89a47ead6e469f27a3065ad"
    url "https://github.com/suiflex/rdb/releases/download/v0.22.0/rdb-aarch64-apple-darwin.dmg"
  end
  on_intel do
    sha256 "83f67efcd9fb2c4de33c85ccfe72e2575177abc244079522963e0decba5ca86b"
    url "https://github.com/suiflex/rdb/releases/download/v0.22.0/rdb-x86_64-apple-darwin.dmg"
  end

  name "RDB"
  desc "Native cross-platform database manager (PostgreSQL, MySQL, Redis, MongoDB)"
  homepage "https://github.com/suiflex/rdb"

  app "RDB.app"
end
