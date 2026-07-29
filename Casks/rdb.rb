# Rendered by .github/workflows/release-build.yml into suiflex/homebrew-tap.
# Placeholders (0.27.0, https://github.com/suiflex/rdb/releases/download/v0.27.0, d663d083a400052aaccbc17dd2c2ce96563cb980777e4828eeeceeb5e364e407, 3e8246d406f3115311ebc41fc51504061bce855b7755c1497c9bf88bc50f595b) are filled in
# via sed on each release. Edit the template, not the generated file.
#
# This cask installs the RDB.app GUI (from the release .dmg) into Applications.
# The CLI-only binary is the separate `rdb` formula.
cask "rdb" do
  version "0.27.0"

  on_arm do
    sha256 "d663d083a400052aaccbc17dd2c2ce96563cb980777e4828eeeceeb5e364e407"
    url "https://github.com/suiflex/rdb/releases/download/v0.27.0/rdb-aarch64-apple-darwin.dmg"
  end
  on_intel do
    sha256 "3e8246d406f3115311ebc41fc51504061bce855b7755c1497c9bf88bc50f595b"
    url "https://github.com/suiflex/rdb/releases/download/v0.27.0/rdb-x86_64-apple-darwin.dmg"
  end

  name "RDB"
  desc "Native cross-platform database manager (PostgreSQL, MySQL, Redis, MongoDB)"
  homepage "https://github.com/suiflex/rdb"

  app "RDB.app"
end
