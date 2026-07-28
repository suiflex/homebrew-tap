# Rendered by .github/workflows/release-build.yml into suiflex/homebrew-tap.
# Placeholders (0.25.2, https://github.com/suiflex/rdb/releases/download/v0.25.2, 95adb91d102ca3e22285757e4d72bb77683750f3bacbd3c88a37d5e61aa951e3, f7ad6b8f86077de9d6a91f6b20147c607e34498b810ae36347a87508bcd2e69a) are filled in
# via sed on each release. Edit the template, not the generated file.
#
# This cask installs the RDB.app GUI (from the release .dmg) into Applications.
# The CLI-only binary is the separate `rdb` formula.
cask "rdb" do
  version "0.25.2"

  on_arm do
    sha256 "95adb91d102ca3e22285757e4d72bb77683750f3bacbd3c88a37d5e61aa951e3"
    url "https://github.com/suiflex/rdb/releases/download/v0.25.2/rdb-aarch64-apple-darwin.dmg"
  end
  on_intel do
    sha256 "f7ad6b8f86077de9d6a91f6b20147c607e34498b810ae36347a87508bcd2e69a"
    url "https://github.com/suiflex/rdb/releases/download/v0.25.2/rdb-x86_64-apple-darwin.dmg"
  end

  name "RDB"
  desc "Native cross-platform database manager (PostgreSQL, MySQL, Redis, MongoDB)"
  homepage "https://github.com/suiflex/rdb"

  app "RDB.app"
end
