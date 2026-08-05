# Rendered by .github/workflows/release-build.yml into suiflex/homebrew-tap.
# Placeholders (0.32.0, https://github.com/suiflex/rdb/releases/download/v0.32.0, 0a59bd85232ff2bd4d722a0a476674bc21dcc54e789673850fa4b3a271af5f37, 8c8ac051bef7209341614e7d1f070887ec615c30d2139c7c02e4cd91b90710d8, eabdd9012f4b6715749d64bf79ce3f915b120ed5a2ea517734e827e19e178971) are
# filled in via sed on each release. Edit the template, not the generated file.
class Rdb < Formula
  desc "Native cross-platform database manager (PostgreSQL, MySQL, Redis, MongoDB)"
  homepage "https://github.com/suiflex/rdb"
  version "0.32.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/suiflex/rdb/releases/download/v0.32.0/rdb-aarch64-apple-darwin.tar.gz"
      sha256 "0a59bd85232ff2bd4d722a0a476674bc21dcc54e789673850fa4b3a271af5f37"
    end
    on_intel do
      url "https://github.com/suiflex/rdb/releases/download/v0.32.0/rdb-x86_64-apple-darwin.tar.gz"
      sha256 "8c8ac051bef7209341614e7d1f070887ec615c30d2139c7c02e4cd91b90710d8"
    end
  end

  on_linux do
    url "https://github.com/suiflex/rdb/releases/download/v0.32.0/rdb-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "eabdd9012f4b6715749d64bf79ce3f915b120ed5a2ea517734e827e19e178971"
  end

  def install
    bin.install "rdb"
  end

  test do
    assert_match "rdb", shell_output("#{bin}/rdb --version")
  end
end
