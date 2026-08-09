# Rendered by .github/workflows/release-build.yml into suiflex/homebrew-tap.
# Placeholders (0.34.0, https://github.com/suiflex/rdb/releases/download/v0.34.0, 0d72572677f9611ce0d524ec99b6c18a74e47643e948493186a52a8485c00c97, 1ac4e6dc1bcd4faa3b33801c8faf2aaaf01897a26b1f3b29fa099f8dd09915e4, e5400381e7fbccbb5cf87346e5012b70bf0d176d328520ff27c2870a53720aa9) are
# filled in via sed on each release. Edit the template, not the generated file.
class Rdb < Formula
  desc "Native cross-platform database manager (PostgreSQL, MySQL, Redis, MongoDB)"
  homepage "https://github.com/suiflex/rdb"
  version "0.34.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/suiflex/rdb/releases/download/v0.34.0/rdb-aarch64-apple-darwin.tar.gz"
      sha256 "0d72572677f9611ce0d524ec99b6c18a74e47643e948493186a52a8485c00c97"
    end
    on_intel do
      url "https://github.com/suiflex/rdb/releases/download/v0.34.0/rdb-x86_64-apple-darwin.tar.gz"
      sha256 "1ac4e6dc1bcd4faa3b33801c8faf2aaaf01897a26b1f3b29fa099f8dd09915e4"
    end
  end

  on_linux do
    url "https://github.com/suiflex/rdb/releases/download/v0.34.0/rdb-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "e5400381e7fbccbb5cf87346e5012b70bf0d176d328520ff27c2870a53720aa9"
  end

  def install
    bin.install "rdb"
  end

  test do
    assert_match "rdb", shell_output("#{bin}/rdb --version")
  end
end
