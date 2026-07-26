# Rendered by .github/workflows/release-build.yml into suiflex/homebrew-tap.
# Placeholders (0.24.0, https://github.com/suiflex/rdb/releases/download/v0.24.0, cc205bd266932c8507b6210409d361867d305caa7381b05e9925540956cb6a39, 664ea19b11f0a01cfc49c37acb2909a3d34377cad5c142b39e094215a26275d0, 184a4f63f2c095b7e7facc6a51b765d11e31d2b20f4ff8170aed305382146a54) are
# filled in via sed on each release. Edit the template, not the generated file.
class Rdb < Formula
  desc "Native cross-platform database manager (PostgreSQL, MySQL, Redis, MongoDB)"
  homepage "https://github.com/suiflex/rdb"
  version "0.24.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/suiflex/rdb/releases/download/v0.24.0/rdb-aarch64-apple-darwin.tar.gz"
      sha256 "cc205bd266932c8507b6210409d361867d305caa7381b05e9925540956cb6a39"
    end
    on_intel do
      url "https://github.com/suiflex/rdb/releases/download/v0.24.0/rdb-x86_64-apple-darwin.tar.gz"
      sha256 "664ea19b11f0a01cfc49c37acb2909a3d34377cad5c142b39e094215a26275d0"
    end
  end

  on_linux do
    url "https://github.com/suiflex/rdb/releases/download/v0.24.0/rdb-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "184a4f63f2c095b7e7facc6a51b765d11e31d2b20f4ff8170aed305382146a54"
  end

  def install
    bin.install "rdb"
  end

  test do
    assert_match "rdb", shell_output("#{bin}/rdb --version")
  end
end
