# Rendered by .github/workflows/release-build.yml into suiflex/homebrew-tap.
# Placeholders (0.29.0, https://github.com/suiflex/rdb/releases/download/v0.29.0, 6484d97d3c725c4a85e2b1dc22bcba18be2befbd53dc5c1bb82a899e4b3da98f, 59373f2e2b114fbe319ade10bffebf310df677901b094f00a074fa7dfcdc36e5, 0a89e3d9d16c6915a8c74df5fa584247bb71c266f5d7fc38610226026a90f167) are
# filled in via sed on each release. Edit the template, not the generated file.
class Rdb < Formula
  desc "Native cross-platform database manager (PostgreSQL, MySQL, Redis, MongoDB)"
  homepage "https://github.com/suiflex/rdb"
  version "0.29.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/suiflex/rdb/releases/download/v0.29.0/rdb-aarch64-apple-darwin.tar.gz"
      sha256 "6484d97d3c725c4a85e2b1dc22bcba18be2befbd53dc5c1bb82a899e4b3da98f"
    end
    on_intel do
      url "https://github.com/suiflex/rdb/releases/download/v0.29.0/rdb-x86_64-apple-darwin.tar.gz"
      sha256 "59373f2e2b114fbe319ade10bffebf310df677901b094f00a074fa7dfcdc36e5"
    end
  end

  on_linux do
    url "https://github.com/suiflex/rdb/releases/download/v0.29.0/rdb-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "0a89e3d9d16c6915a8c74df5fa584247bb71c266f5d7fc38610226026a90f167"
  end

  def install
    bin.install "rdb"
  end

  test do
    assert_match "rdb", shell_output("#{bin}/rdb --version")
  end
end
