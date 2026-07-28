# Rendered by .github/workflows/release-build.yml into suiflex/homebrew-tap.
# Placeholders (0.26.0, https://github.com/suiflex/rdb/releases/download/v0.26.0, d2d91c356403edcf42babb99032d2e8efa991dc0fab30d8aabb98f0cd2529366, 1f80c78d3f8186af923ca0957e67757221031de3a750af3d28475c99fee87dec, 14b5102bb76f8458776bb6af8d5c7a40031e46b0f7309c140e84621cceba13e5) are
# filled in via sed on each release. Edit the template, not the generated file.
class Rdb < Formula
  desc "Native cross-platform database manager (PostgreSQL, MySQL, Redis, MongoDB)"
  homepage "https://github.com/suiflex/rdb"
  version "0.26.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/suiflex/rdb/releases/download/v0.26.0/rdb-aarch64-apple-darwin.tar.gz"
      sha256 "d2d91c356403edcf42babb99032d2e8efa991dc0fab30d8aabb98f0cd2529366"
    end
    on_intel do
      url "https://github.com/suiflex/rdb/releases/download/v0.26.0/rdb-x86_64-apple-darwin.tar.gz"
      sha256 "1f80c78d3f8186af923ca0957e67757221031de3a750af3d28475c99fee87dec"
    end
  end

  on_linux do
    url "https://github.com/suiflex/rdb/releases/download/v0.26.0/rdb-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "14b5102bb76f8458776bb6af8d5c7a40031e46b0f7309c140e84621cceba13e5"
  end

  def install
    bin.install "rdb"
  end

  test do
    assert_match "rdb", shell_output("#{bin}/rdb --version")
  end
end
