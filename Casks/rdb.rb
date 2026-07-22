# Rendered by .github/workflows/release-build.yml into suiflex/homebrew-tap.
# Placeholders (0.21.0, https://github.com/suiflex/rdb/releases/download/v0.21.0, b686d1487f4ab4a7004a8821c3e91076036ef9ec350e90ee5f0a0f033911af6d, dc432a07097c23d0a490cca81a8f23f6effe886b0e70769a2da93d852ebb1683) are filled in
# via sed on each release. Edit the template, not the generated file.
#
# This cask installs the RDB.app GUI (from the release .dmg) into Applications.
# The CLI-only binary is the separate `rdb` formula.
cask "rdb" do
  version "0.21.0"

  on_arm do
    sha256 "b686d1487f4ab4a7004a8821c3e91076036ef9ec350e90ee5f0a0f033911af6d"
    url "https://github.com/suiflex/rdb/releases/download/v0.21.0/rdb-aarch64-apple-darwin.dmg"
  end
  on_intel do
    sha256 "dc432a07097c23d0a490cca81a8f23f6effe886b0e70769a2da93d852ebb1683"
    url "https://github.com/suiflex/rdb/releases/download/v0.21.0/rdb-x86_64-apple-darwin.dmg"
  end

  name "RDB"
  desc "Native cross-platform database manager (PostgreSQL, MySQL, Redis, MongoDB)"
  homepage "https://github.com/suiflex/rdb"

  app "RDB.app"
end
