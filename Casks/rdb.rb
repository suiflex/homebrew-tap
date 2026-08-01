# Rendered by .github/workflows/release-build.yml into suiflex/homebrew-tap.
# Placeholders (0.30.0, https://github.com/suiflex/rdb/releases/download/v0.30.0, c65e1bf77506f347c86b177268b71853e2b2b35288e3ae7dfb222390b9a0ce29, 18b2261c88afc72a3168cfb56ec80c04eaf157d7146b444b28c5d6dc9d1789f6) are filled in
# via sed on each release. Edit the template, not the generated file.
#
# This cask installs the RDB.app GUI (from the release .dmg) into Applications.
# The CLI-only binary is the separate `rdb` formula.
cask "rdb" do
  version "0.30.0"

  on_arm do
    sha256 "c65e1bf77506f347c86b177268b71853e2b2b35288e3ae7dfb222390b9a0ce29"
    url "https://github.com/suiflex/rdb/releases/download/v0.30.0/rdb-aarch64-apple-darwin.dmg"
  end
  on_intel do
    sha256 "18b2261c88afc72a3168cfb56ec80c04eaf157d7146b444b28c5d6dc9d1789f6"
    url "https://github.com/suiflex/rdb/releases/download/v0.30.0/rdb-x86_64-apple-darwin.dmg"
  end

  name "RDB"
  desc "Native cross-platform database manager (PostgreSQL, MySQL, Redis, MongoDB)"
  homepage "https://github.com/suiflex/rdb"

  app "RDB.app"
end
