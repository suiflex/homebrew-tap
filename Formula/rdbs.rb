# Rendered by .github/workflows/release-build.yml into suiflex/homebrew-tap.
# Placeholders (0.11.0, https://github.com/suiflex/rdb/releases/download/v0.11.0, 2435603830433972034dad75c30be1c1a2fdf67f529875b83070408695717b0d, a28d1294e3389350bf96354ba1d6607ba407a88321f489d4a32ef343512a13cc, bb3749a88e08a11a0022056552c15c6f05c20d80e32e17cc10a0dc656c099ed1) are
# filled in via sed on each release. Edit the template, not the generated file.
class Rdbs < Formula
  desc "Native cross-platform database manager (PostgreSQL, MySQL, Redis, MongoDB)"
  homepage "https://github.com/suiflex/rdb"
  version "0.11.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/suiflex/rdb/releases/download/v0.11.0/rdbs-aarch64-apple-darwin.tar.gz"
      sha256 "2435603830433972034dad75c30be1c1a2fdf67f529875b83070408695717b0d"
    end
    on_intel do
      url "https://github.com/suiflex/rdb/releases/download/v0.11.0/rdbs-x86_64-apple-darwin.tar.gz"
      sha256 "a28d1294e3389350bf96354ba1d6607ba407a88321f489d4a32ef343512a13cc"
    end
  end

  on_linux do
    url "https://github.com/suiflex/rdb/releases/download/v0.11.0/rdbs-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "bb3749a88e08a11a0022056552c15c6f05c20d80e32e17cc10a0dc656c099ed1"
  end

  def install
    bin.install "rdbs"
  end

  test do
    assert_match "rdbs", shell_output("#{bin}/rdbs --version")
  end
end
