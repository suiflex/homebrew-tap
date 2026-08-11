# Rendered by .github/workflows/release-build.yml into suiflex/homebrew-tap.
# Placeholders (0.35.0, https://github.com/suiflex/rdb/releases/download/v0.35.0, e563285dfecfad39ec93a0844dce1ec749c944a9000344c1ef5a199f5a3bf843, 08fe1e4c5232ff9abfe963b3940aa7db047b7ba85f1811530ad3e83aa0e2b798, 959fc8f86a5e05cace6ca162a6b37935effb6e3883a9d8316cebe34f742af674) are
# filled in via sed on each release. Edit the template, not the generated file.
class Rdb < Formula
  desc "Native cross-platform database manager (PostgreSQL, MySQL, Redis, MongoDB)"
  homepage "https://github.com/suiflex/rdb"
  version "0.35.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/suiflex/rdb/releases/download/v0.35.0/rdb-aarch64-apple-darwin.tar.gz"
      sha256 "e563285dfecfad39ec93a0844dce1ec749c944a9000344c1ef5a199f5a3bf843"
    end
    on_intel do
      url "https://github.com/suiflex/rdb/releases/download/v0.35.0/rdb-x86_64-apple-darwin.tar.gz"
      sha256 "08fe1e4c5232ff9abfe963b3940aa7db047b7ba85f1811530ad3e83aa0e2b798"
    end
  end

  on_linux do
    url "https://github.com/suiflex/rdb/releases/download/v0.35.0/rdb-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "959fc8f86a5e05cace6ca162a6b37935effb6e3883a9d8316cebe34f742af674"
  end

  def install
    bin.install "rdb"
  end

  test do
    assert_match "rdb", shell_output("#{bin}/rdb --version")
  end
end
