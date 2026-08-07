# Rendered by .github/workflows/release-build.yml into suiflex/homebrew-tap.
# Placeholders (0.33.0, https://github.com/suiflex/rdb/releases/download/v0.33.0, c653170babf65822267573e4cba21eee58823e38421d1020377c6c03e5685426, 3313fd63ffbe7cbea8dafc8e6e93ac86f861c9478d012e63467f7071f917210c, 921042cb90ad9ea5cf5f73685f2c9daaa7fe8b1ca9356bb5018f306e9736ed5e) are
# filled in via sed on each release. Edit the template, not the generated file.
class Rdb < Formula
  desc "Native cross-platform database manager (PostgreSQL, MySQL, Redis, MongoDB)"
  homepage "https://github.com/suiflex/rdb"
  version "0.33.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/suiflex/rdb/releases/download/v0.33.0/rdb-aarch64-apple-darwin.tar.gz"
      sha256 "c653170babf65822267573e4cba21eee58823e38421d1020377c6c03e5685426"
    end
    on_intel do
      url "https://github.com/suiflex/rdb/releases/download/v0.33.0/rdb-x86_64-apple-darwin.tar.gz"
      sha256 "3313fd63ffbe7cbea8dafc8e6e93ac86f861c9478d012e63467f7071f917210c"
    end
  end

  on_linux do
    url "https://github.com/suiflex/rdb/releases/download/v0.33.0/rdb-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "921042cb90ad9ea5cf5f73685f2c9daaa7fe8b1ca9356bb5018f306e9736ed5e"
  end

  def install
    bin.install "rdb"
  end

  test do
    assert_match "rdb", shell_output("#{bin}/rdb --version")
  end
end
