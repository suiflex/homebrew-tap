# Rendered by .github/workflows/release-build.yml into suiflex/homebrew-tap.
# Placeholders (0.25.1, https://github.com/suiflex/rdb/releases/download/v0.25.1, 37a2b04baefde5d0ec44c1dd11ca520b58bae145db8f7af33bb2fb4f476305f8, d616135b1d70283747fc2df3017f2f39c2ce6bc2ad269e131180dae264a157bc) are filled in
# via sed on each release. Edit the template, not the generated file.
#
# This cask installs the RDB.app GUI (from the release .dmg) into Applications.
# The CLI-only binary is the separate `rdb` formula.
cask "rdb" do
  version "0.25.1"

  on_arm do
    sha256 "37a2b04baefde5d0ec44c1dd11ca520b58bae145db8f7af33bb2fb4f476305f8"
    url "https://github.com/suiflex/rdb/releases/download/v0.25.1/rdb-aarch64-apple-darwin.dmg"
  end
  on_intel do
    sha256 "d616135b1d70283747fc2df3017f2f39c2ce6bc2ad269e131180dae264a157bc"
    url "https://github.com/suiflex/rdb/releases/download/v0.25.1/rdb-x86_64-apple-darwin.dmg"
  end

  name "RDB"
  desc "Native cross-platform database manager (PostgreSQL, MySQL, Redis, MongoDB)"
  homepage "https://github.com/suiflex/rdb"

  app "RDB.app"
end
