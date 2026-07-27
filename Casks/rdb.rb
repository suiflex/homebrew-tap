# Rendered by .github/workflows/release-build.yml into suiflex/homebrew-tap.
# Placeholders (0.25.0, https://github.com/suiflex/rdb/releases/download/v0.25.0, ffab930e43883b394a83b5f1cb6a6ab04655a83496bba038a7c11db8f7bb701f, 92fd9e0f155cbab3005dcdec64decb9f476eb7b04f68a415675c1db104fbd1af) are filled in
# via sed on each release. Edit the template, not the generated file.
#
# This cask installs the RDB.app GUI (from the release .dmg) into Applications.
# The CLI-only binary is the separate `rdb` formula.
cask "rdb" do
  version "0.25.0"

  on_arm do
    sha256 "ffab930e43883b394a83b5f1cb6a6ab04655a83496bba038a7c11db8f7bb701f"
    url "https://github.com/suiflex/rdb/releases/download/v0.25.0/rdb-aarch64-apple-darwin.dmg"
  end
  on_intel do
    sha256 "92fd9e0f155cbab3005dcdec64decb9f476eb7b04f68a415675c1db104fbd1af"
    url "https://github.com/suiflex/rdb/releases/download/v0.25.0/rdb-x86_64-apple-darwin.dmg"
  end

  name "RDB"
  desc "Native cross-platform database manager (PostgreSQL, MySQL, Redis, MongoDB)"
  homepage "https://github.com/suiflex/rdb"

  app "RDB.app"
end
