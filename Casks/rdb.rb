# Rendered by .github/workflows/release-build.yml into suiflex/homebrew-tap.
# Placeholders (0.31.0, https://github.com/suiflex/rdb/releases/download/v0.31.0, 22c2e5b5c692d7b2b5d82548f6500e17db4cbe413e1cb820dbdb729118d738db, f2b9a3a89ec01f5ac1b401f9258614bc65f301f3ea58706ea9e3a0c0f91f6111) are filled in
# via sed on each release. Edit the template, not the generated file.
#
# This cask installs the RDB.app GUI (from the release .dmg) into Applications.
# The CLI-only binary is the separate `rdb` formula.
cask "rdb" do
  version "0.31.0"

  on_arm do
    sha256 "22c2e5b5c692d7b2b5d82548f6500e17db4cbe413e1cb820dbdb729118d738db"
    url "https://github.com/suiflex/rdb/releases/download/v0.31.0/rdb-aarch64-apple-darwin.dmg"
  end
  on_intel do
    sha256 "f2b9a3a89ec01f5ac1b401f9258614bc65f301f3ea58706ea9e3a0c0f91f6111"
    url "https://github.com/suiflex/rdb/releases/download/v0.31.0/rdb-x86_64-apple-darwin.dmg"
  end

  name "RDB"
  desc "Native cross-platform database manager (PostgreSQL, MySQL, Redis, MongoDB)"
  homepage "https://github.com/suiflex/rdb"

  app "RDB.app"
end
