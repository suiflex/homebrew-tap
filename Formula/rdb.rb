# Rendered by .github/workflows/release-build.yml into suiflex/homebrew-tap.
# Placeholders (0.36.0, https://github.com/suiflex/rdb/releases/download/v0.36.0, c14cd397beb2221192f7d123becfff90ae9fae23166ef29b6a61fab3a25372cb, ff9f76ca07d33e141274815044a67557b72f6ecbac97b8a3580657d7df7dbb89, aa457aca1277fb733b8e6f41a76a6ca1b4bbfe32ea49dde4465c42fcaaf84ab0) are
# filled in via sed on each release. Edit the template, not the generated file.
class Rdb < Formula
  desc "Native cross-platform database manager (PostgreSQL, MySQL, Redis, MongoDB)"
  homepage "https://github.com/suiflex/rdb"
  version "0.36.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/suiflex/rdb/releases/download/v0.36.0/rdb-aarch64-apple-darwin.tar.gz"
      sha256 "c14cd397beb2221192f7d123becfff90ae9fae23166ef29b6a61fab3a25372cb"
    end
    on_intel do
      url "https://github.com/suiflex/rdb/releases/download/v0.36.0/rdb-x86_64-apple-darwin.tar.gz"
      sha256 "ff9f76ca07d33e141274815044a67557b72f6ecbac97b8a3580657d7df7dbb89"
    end
  end

  on_linux do
    url "https://github.com/suiflex/rdb/releases/download/v0.36.0/rdb-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "aa457aca1277fb733b8e6f41a76a6ca1b4bbfe32ea49dde4465c42fcaaf84ab0"
  end

  def install
    bin.install "rdb"
  end

  test do
    assert_match "rdb", shell_output("#{bin}/rdb --version")
  end
end
