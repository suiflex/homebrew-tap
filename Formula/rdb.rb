# Rendered by .github/workflows/release-build.yml into suiflex/homebrew-tap.
# Placeholders (0.19.0, https://github.com/suiflex/rdb/releases/download/v0.19.0, b41e89338b198bee0e16d0f886f2205be04096a064f3f8f046c92f5ec10a3fb2, e9016b7a7d6bf7f236f8840cb062a408bac81a942f813e96bc1608247706b18a, 93321422ae72500506d2e587aee6d65906b9b94ced67e22945e83b4a60e5a167) are
# filled in via sed on each release. Edit the template, not the generated file.
class Rdb < Formula
  desc "Native cross-platform database manager (PostgreSQL, MySQL, Redis, MongoDB)"
  homepage "https://github.com/suiflex/rdb"
  version "0.19.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/suiflex/rdb/releases/download/v0.19.0/rdb-aarch64-apple-darwin.tar.gz"
      sha256 "b41e89338b198bee0e16d0f886f2205be04096a064f3f8f046c92f5ec10a3fb2"
    end
    on_intel do
      url "https://github.com/suiflex/rdb/releases/download/v0.19.0/rdb-x86_64-apple-darwin.tar.gz"
      sha256 "e9016b7a7d6bf7f236f8840cb062a408bac81a942f813e96bc1608247706b18a"
    end
  end

  on_linux do
    url "https://github.com/suiflex/rdb/releases/download/v0.19.0/rdb-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "93321422ae72500506d2e587aee6d65906b9b94ced67e22945e83b4a60e5a167"
  end

  def install
    bin.install "rdb"
  end

  test do
    assert_match "rdb", shell_output("#{bin}/rdb --version")
  end
end
