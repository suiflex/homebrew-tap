# Rendered by .github/workflows/release-build.yml into suiflex/homebrew-tap.
# Placeholders (0.18.0, https://github.com/suiflex/rdb/releases/download/v0.18.0, 8cb0f958d4a9cacd892b7661ad3a936d3392865ac996b2ab79727c57408f6438, e7a9483ceb75ca87bbddb5570e0fe2a97439ce81e722ce3dfcd0f5002bdd8f71, 833a067fc1faa7caed376ec56e8b27f06424a1c12b4a59a51bd2256eb9ed8cdf) are
# filled in via sed on each release. Edit the template, not the generated file.
class Rdb < Formula
  desc "Native cross-platform database manager (PostgreSQL, MySQL, Redis, MongoDB)"
  homepage "https://github.com/suiflex/rdb"
  version "0.18.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/suiflex/rdb/releases/download/v0.18.0/rdb-aarch64-apple-darwin.tar.gz"
      sha256 "8cb0f958d4a9cacd892b7661ad3a936d3392865ac996b2ab79727c57408f6438"
    end
    on_intel do
      url "https://github.com/suiflex/rdb/releases/download/v0.18.0/rdb-x86_64-apple-darwin.tar.gz"
      sha256 "e7a9483ceb75ca87bbddb5570e0fe2a97439ce81e722ce3dfcd0f5002bdd8f71"
    end
  end

  on_linux do
    url "https://github.com/suiflex/rdb/releases/download/v0.18.0/rdb-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "833a067fc1faa7caed376ec56e8b27f06424a1c12b4a59a51bd2256eb9ed8cdf"
  end

  def install
    bin.install "rdb"
  end

  test do
    assert_match "rdb", shell_output("#{bin}/rdb --version")
  end
end
