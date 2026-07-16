# Rendered by .github/workflows/release-build.yml into suiflex/homebrew-tap.
# Placeholders (0.17.0, https://github.com/suiflex/rdb/releases/download/v0.17.0, 3ef00a0574fa8f69cb8f9f827857ced00ff62800729cef5f6e034e490c8d67da, 23838c5da91bdfe5f39d31997f10abedab22881973515b2685b4da233083228d, 9e69ee2c91cd4d97da9b78774ce048b10901c73d1d1631bd6fe00732546cfe44) are
# filled in via sed on each release. Edit the template, not the generated file.
class Rdb < Formula
  desc "Native cross-platform database manager (PostgreSQL, MySQL, Redis, MongoDB)"
  homepage "https://github.com/suiflex/rdb"
  version "0.17.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/suiflex/rdb/releases/download/v0.17.0/rdb-aarch64-apple-darwin.tar.gz"
      sha256 "3ef00a0574fa8f69cb8f9f827857ced00ff62800729cef5f6e034e490c8d67da"
    end
    on_intel do
      url "https://github.com/suiflex/rdb/releases/download/v0.17.0/rdb-x86_64-apple-darwin.tar.gz"
      sha256 "23838c5da91bdfe5f39d31997f10abedab22881973515b2685b4da233083228d"
    end
  end

  on_linux do
    url "https://github.com/suiflex/rdb/releases/download/v0.17.0/rdb-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "9e69ee2c91cd4d97da9b78774ce048b10901c73d1d1631bd6fe00732546cfe44"
  end

  def install
    bin.install "rdb"
  end

  test do
    assert_match "rdb", shell_output("#{bin}/rdb --version")
  end
end
