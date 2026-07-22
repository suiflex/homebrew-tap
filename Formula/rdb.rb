# Rendered by .github/workflows/release-build.yml into suiflex/homebrew-tap.
# Placeholders (0.21.0, https://github.com/suiflex/rdb/releases/download/v0.21.0, 338a3ba8696be6f94d563a73d5b4c372d87f2c5dbc69a92648bc059bff9c7c7d, c760937c42d0d9044a86fcc031161cff2b2b733e250dbb2ce919afef8210c59a, 3494416607637f98ac1ae790748b2ce24869258b5db04df85c62e9060605219b) are
# filled in via sed on each release. Edit the template, not the generated file.
class Rdb < Formula
  desc "Native cross-platform database manager (PostgreSQL, MySQL, Redis, MongoDB)"
  homepage "https://github.com/suiflex/rdb"
  version "0.21.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/suiflex/rdb/releases/download/v0.21.0/rdb-aarch64-apple-darwin.tar.gz"
      sha256 "338a3ba8696be6f94d563a73d5b4c372d87f2c5dbc69a92648bc059bff9c7c7d"
    end
    on_intel do
      url "https://github.com/suiflex/rdb/releases/download/v0.21.0/rdb-x86_64-apple-darwin.tar.gz"
      sha256 "c760937c42d0d9044a86fcc031161cff2b2b733e250dbb2ce919afef8210c59a"
    end
  end

  on_linux do
    url "https://github.com/suiflex/rdb/releases/download/v0.21.0/rdb-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "3494416607637f98ac1ae790748b2ce24869258b5db04df85c62e9060605219b"
  end

  def install
    bin.install "rdb"
  end

  test do
    assert_match "rdb", shell_output("#{bin}/rdb --version")
  end
end
