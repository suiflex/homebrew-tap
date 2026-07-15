# Rendered by .github/workflows/release-build.yml into suiflex/homebrew-tap.
# Placeholders (0.14.0, https://github.com/suiflex/rdb/releases/download/v0.14.0, 9d8088c57e44c83a294f8d5b554c372b66306a08c71d481c3bb5becd7808304c, 88b1bf5c9248887cc3e7970add6d5a4189fd604fd2846fe762192b97e9ca3a87, d27eb43bc23d2b2e091c7449adc1d1f980572fb62b57bdcae5e054547fe79f74) are
# filled in via sed on each release. Edit the template, not the generated file.
class Rdbs < Formula
  desc "Native cross-platform database manager (PostgreSQL, MySQL, Redis, MongoDB)"
  homepage "https://github.com/suiflex/rdb"
  version "0.14.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/suiflex/rdb/releases/download/v0.14.0/rdbs-aarch64-apple-darwin.tar.gz"
      sha256 "9d8088c57e44c83a294f8d5b554c372b66306a08c71d481c3bb5becd7808304c"
    end
    on_intel do
      url "https://github.com/suiflex/rdb/releases/download/v0.14.0/rdbs-x86_64-apple-darwin.tar.gz"
      sha256 "88b1bf5c9248887cc3e7970add6d5a4189fd604fd2846fe762192b97e9ca3a87"
    end
  end

  on_linux do
    url "https://github.com/suiflex/rdb/releases/download/v0.14.0/rdbs-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "d27eb43bc23d2b2e091c7449adc1d1f980572fb62b57bdcae5e054547fe79f74"
  end

  def install
    bin.install "rdbs"
  end

  test do
    assert_match "rdbs", shell_output("#{bin}/rdbs --version")
  end
end
