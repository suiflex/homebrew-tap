# Rendered by .github/workflows/release-build.yml into suiflex/homebrew-tap.
# Placeholders (0.26.0, https://github.com/suiflex/rdb/releases/download/v0.26.0, 13a1b951e9cb5cfac509be11734e502b76bf4dd5fc07c22f994319a8357bb8c1, ae7d2d8a1cdd492cf00c493613daa4ce5ab99376b24d63b2e6e4bff7d2aba8cd) are filled in
# via sed on each release. Edit the template, not the generated file.
#
# This cask installs the RDB.app GUI (from the release .dmg) into Applications.
# The CLI-only binary is the separate `rdb` formula.
cask "rdb" do
  version "0.26.0"

  on_arm do
    sha256 "13a1b951e9cb5cfac509be11734e502b76bf4dd5fc07c22f994319a8357bb8c1"
    url "https://github.com/suiflex/rdb/releases/download/v0.26.0/rdb-aarch64-apple-darwin.dmg"
  end
  on_intel do
    sha256 "ae7d2d8a1cdd492cf00c493613daa4ce5ab99376b24d63b2e6e4bff7d2aba8cd"
    url "https://github.com/suiflex/rdb/releases/download/v0.26.0/rdb-x86_64-apple-darwin.dmg"
  end

  name "RDB"
  desc "Native cross-platform database manager (PostgreSQL, MySQL, Redis, MongoDB)"
  homepage "https://github.com/suiflex/rdb"

  app "RDB.app"
end
