# Rendered by .github/workflows/release-build.yml into suiflex/homebrew-tap.
# Placeholders (0.31.0, https://github.com/suiflex/rdb/releases/download/v0.31.0, d028aa8355161012397f8981927b44360a6325c70b27f9792a812261c1ad6ad7, 03b187dc48804dc312488e0cc6cb50d9eeec1449ce91c20c774f0387cb77132c, b8c1d775c1c66ef9ec99c31b893ffd30364e5d23b99a620a639648f44378e765) are
# filled in via sed on each release. Edit the template, not the generated file.
class Rdb < Formula
  desc "Native cross-platform database manager (PostgreSQL, MySQL, Redis, MongoDB)"
  homepage "https://github.com/suiflex/rdb"
  version "0.31.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/suiflex/rdb/releases/download/v0.31.0/rdb-aarch64-apple-darwin.tar.gz"
      sha256 "d028aa8355161012397f8981927b44360a6325c70b27f9792a812261c1ad6ad7"
    end
    on_intel do
      url "https://github.com/suiflex/rdb/releases/download/v0.31.0/rdb-x86_64-apple-darwin.tar.gz"
      sha256 "03b187dc48804dc312488e0cc6cb50d9eeec1449ce91c20c774f0387cb77132c"
    end
  end

  on_linux do
    url "https://github.com/suiflex/rdb/releases/download/v0.31.0/rdb-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "b8c1d775c1c66ef9ec99c31b893ffd30364e5d23b99a620a639648f44378e765"
  end

  def install
    bin.install "rdb"
  end

  test do
    assert_match "rdb", shell_output("#{bin}/rdb --version")
  end
end
