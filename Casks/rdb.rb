# Rendered by .github/workflows/release-build.yml into suiflex/homebrew-tap.
# Placeholders (0.29.0, https://github.com/suiflex/rdb/releases/download/v0.29.0, c542a4c4b31b17840dae81a3c1cd34acf481644359790e2b589dbd3fbd273106, 801548357cc25102c862df40add2135a113df1bedc69e80d78c4aaa0c6685744) are filled in
# via sed on each release. Edit the template, not the generated file.
#
# This cask installs the RDB.app GUI (from the release .dmg) into Applications.
# The CLI-only binary is the separate `rdb` formula.
cask "rdb" do
  version "0.29.0"

  on_arm do
    sha256 "c542a4c4b31b17840dae81a3c1cd34acf481644359790e2b589dbd3fbd273106"
    url "https://github.com/suiflex/rdb/releases/download/v0.29.0/rdb-aarch64-apple-darwin.dmg"
  end
  on_intel do
    sha256 "801548357cc25102c862df40add2135a113df1bedc69e80d78c4aaa0c6685744"
    url "https://github.com/suiflex/rdb/releases/download/v0.29.0/rdb-x86_64-apple-darwin.dmg"
  end

  name "RDB"
  desc "Native cross-platform database manager (PostgreSQL, MySQL, Redis, MongoDB)"
  homepage "https://github.com/suiflex/rdb"

  app "RDB.app"
end
