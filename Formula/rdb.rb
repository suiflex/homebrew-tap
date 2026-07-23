# Rendered by .github/workflows/release-build.yml into suiflex/homebrew-tap.
# Placeholders (0.22.0, https://github.com/suiflex/rdb/releases/download/v0.22.0, e22c039a484ba66272759220a390a0c5501ea9501ab72986eb104df36f678c21, 2584afed4956fb6c81407644d44b204ba9e85a3eb79421854001aba67f4a6052, a36eda7de4b9de47fff05cc72ce4e3e69c70b6af24db005c8ef068e5e4367406) are
# filled in via sed on each release. Edit the template, not the generated file.
class Rdb < Formula
  desc "Native cross-platform database manager (PostgreSQL, MySQL, Redis, MongoDB)"
  homepage "https://github.com/suiflex/rdb"
  version "0.22.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/suiflex/rdb/releases/download/v0.22.0/rdb-aarch64-apple-darwin.tar.gz"
      sha256 "e22c039a484ba66272759220a390a0c5501ea9501ab72986eb104df36f678c21"
    end
    on_intel do
      url "https://github.com/suiflex/rdb/releases/download/v0.22.0/rdb-x86_64-apple-darwin.tar.gz"
      sha256 "2584afed4956fb6c81407644d44b204ba9e85a3eb79421854001aba67f4a6052"
    end
  end

  on_linux do
    url "https://github.com/suiflex/rdb/releases/download/v0.22.0/rdb-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "a36eda7de4b9de47fff05cc72ce4e3e69c70b6af24db005c8ef068e5e4367406"
  end

  def install
    bin.install "rdb"
  end

  test do
    assert_match "rdb", shell_output("#{bin}/rdb --version")
  end
end
