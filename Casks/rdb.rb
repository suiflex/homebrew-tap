# Rendered by .github/workflows/release-build.yml into suiflex/homebrew-tap.
# Placeholders (0.32.0, https://github.com/suiflex/rdb/releases/download/v0.32.0, d6f9df01d4cdb53b1410583571578e11adf5173e868e9e84e06c93c2ab7fdb5f, 485f696ab49faf0e3bc2aeb9b014d8195bb65bfc1dfe636c9399fe636c8df842) are filled in
# via sed on each release. Edit the template, not the generated file.
#
# This cask installs the RDB.app GUI (from the release .dmg) into Applications.
# The CLI-only binary is the separate `rdb` formula.
cask "rdb" do
  version "0.32.0"

  on_arm do
    sha256 "d6f9df01d4cdb53b1410583571578e11adf5173e868e9e84e06c93c2ab7fdb5f"
    url "https://github.com/suiflex/rdb/releases/download/v0.32.0/rdb-aarch64-apple-darwin.dmg"
  end
  on_intel do
    sha256 "485f696ab49faf0e3bc2aeb9b014d8195bb65bfc1dfe636c9399fe636c8df842"
    url "https://github.com/suiflex/rdb/releases/download/v0.32.0/rdb-x86_64-apple-darwin.dmg"
  end

  name "RDB"
  desc "Native cross-platform database manager (PostgreSQL, MySQL, Redis, MongoDB)"
  homepage "https://github.com/suiflex/rdb"

  app "RDB.app"
end
