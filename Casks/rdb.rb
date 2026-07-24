# Rendered by .github/workflows/release-build.yml into suiflex/homebrew-tap.
# Placeholders (0.23.0, https://github.com/suiflex/rdb/releases/download/v0.23.0, fab714dbfb1be73a72aade41e4f4cec645db8ad5532cfb543b99db164c8f53bb, c731ff1544ef1da803dc5e5f5ed633be6db49e0405526df3cbea792b05cca27a) are filled in
# via sed on each release. Edit the template, not the generated file.
#
# This cask installs the RDB.app GUI (from the release .dmg) into Applications.
# The CLI-only binary is the separate `rdb` formula.
cask "rdb" do
  version "0.23.0"

  on_arm do
    sha256 "fab714dbfb1be73a72aade41e4f4cec645db8ad5532cfb543b99db164c8f53bb"
    url "https://github.com/suiflex/rdb/releases/download/v0.23.0/rdb-aarch64-apple-darwin.dmg"
  end
  on_intel do
    sha256 "c731ff1544ef1da803dc5e5f5ed633be6db49e0405526df3cbea792b05cca27a"
    url "https://github.com/suiflex/rdb/releases/download/v0.23.0/rdb-x86_64-apple-darwin.dmg"
  end

  name "RDB"
  desc "Native cross-platform database manager (PostgreSQL, MySQL, Redis, MongoDB)"
  homepage "https://github.com/suiflex/rdb"

  app "RDB.app"
end
