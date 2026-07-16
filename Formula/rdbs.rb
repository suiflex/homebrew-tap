# Rendered by .github/workflows/release-build.yml into suiflex/homebrew-tap.
# Placeholders (0.16.0, https://github.com/suiflex/rdb/releases/download/v0.16.0, 4c3f1f39c071a4e2c3946ca3822632268e9f68a1bea616be1a03d1d317699864, 72f837a501cb498c9a65ffd0cd9d7ab6401ce0cf5bdc772ff5c7b53956509bf1, 8ae2c9d12c81a543229eeacc655391b5b86d1c6944335fd262d229d2f703ac48) are
# filled in via sed on each release. Edit the template, not the generated file.
class Rdbs < Formula
  desc "Native cross-platform database manager (PostgreSQL, MySQL, Redis, MongoDB)"
  homepage "https://github.com/suiflex/rdb"
  version "0.16.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/suiflex/rdb/releases/download/v0.16.0/rdbs-aarch64-apple-darwin.tar.gz"
      sha256 "4c3f1f39c071a4e2c3946ca3822632268e9f68a1bea616be1a03d1d317699864"
    end
    on_intel do
      url "https://github.com/suiflex/rdb/releases/download/v0.16.0/rdbs-x86_64-apple-darwin.tar.gz"
      sha256 "72f837a501cb498c9a65ffd0cd9d7ab6401ce0cf5bdc772ff5c7b53956509bf1"
    end
  end

  on_linux do
    url "https://github.com/suiflex/rdb/releases/download/v0.16.0/rdbs-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "8ae2c9d12c81a543229eeacc655391b5b86d1c6944335fd262d229d2f703ac48"
  end

  def install
    bin.install "rdbs"
  end

  test do
    assert_match "rdbs", shell_output("#{bin}/rdbs --version")
  end
end
