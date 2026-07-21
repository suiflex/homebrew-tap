# Rendered by .github/workflows/release-build.yml into suiflex/homebrew-tap.
# Placeholders (0.20.0, https://github.com/suiflex/rdb/releases/download/v0.20.0, 6963f66c38362848564d88f7053fc0c7d87c414782e60c98d56e6110638e013b, c86d5fd1d2eac0b441c30a1a25ea8d87964ec568f181acfe54bc9bc628e4d74e, b2b5b925a778169bbc3ca4c9d357aadefa9184435e5865c43959de6f2a38347e) are
# filled in via sed on each release. Edit the template, not the generated file.
class Rdb < Formula
  desc "Native cross-platform database manager (PostgreSQL, MySQL, Redis, MongoDB)"
  homepage "https://github.com/suiflex/rdb"
  version "0.20.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/suiflex/rdb/releases/download/v0.20.0/rdb-aarch64-apple-darwin.tar.gz"
      sha256 "6963f66c38362848564d88f7053fc0c7d87c414782e60c98d56e6110638e013b"
    end
    on_intel do
      url "https://github.com/suiflex/rdb/releases/download/v0.20.0/rdb-x86_64-apple-darwin.tar.gz"
      sha256 "c86d5fd1d2eac0b441c30a1a25ea8d87964ec568f181acfe54bc9bc628e4d74e"
    end
  end

  on_linux do
    url "https://github.com/suiflex/rdb/releases/download/v0.20.0/rdb-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "b2b5b925a778169bbc3ca4c9d357aadefa9184435e5865c43959de6f2a38347e"
  end

  def install
    bin.install "rdb"
  end

  test do
    assert_match "rdb", shell_output("#{bin}/rdb --version")
  end
end
