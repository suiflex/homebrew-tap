# Rendered by .github/workflows/release-build.yml into suiflex/homebrew-tap.
# Placeholders (0.30.0, https://github.com/suiflex/rdb/releases/download/v0.30.0, 0880c9825a03a5dfe191f71f89c982c983c4717f4a7384415e484e5e23a16c24, e464b261ecc45c5f867b3eaa0364a51722d174d59bc9d0c4a4a78210b7150d0b, 877c245670d1072a33b3438366f9493780327054cf523a61b252ce6b287542dc) are
# filled in via sed on each release. Edit the template, not the generated file.
class Rdb < Formula
  desc "Native cross-platform database manager (PostgreSQL, MySQL, Redis, MongoDB)"
  homepage "https://github.com/suiflex/rdb"
  version "0.30.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/suiflex/rdb/releases/download/v0.30.0/rdb-aarch64-apple-darwin.tar.gz"
      sha256 "0880c9825a03a5dfe191f71f89c982c983c4717f4a7384415e484e5e23a16c24"
    end
    on_intel do
      url "https://github.com/suiflex/rdb/releases/download/v0.30.0/rdb-x86_64-apple-darwin.tar.gz"
      sha256 "e464b261ecc45c5f867b3eaa0364a51722d174d59bc9d0c4a4a78210b7150d0b"
    end
  end

  on_linux do
    url "https://github.com/suiflex/rdb/releases/download/v0.30.0/rdb-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "877c245670d1072a33b3438366f9493780327054cf523a61b252ce6b287542dc"
  end

  def install
    bin.install "rdb"
  end

  test do
    assert_match "rdb", shell_output("#{bin}/rdb --version")
  end
end
