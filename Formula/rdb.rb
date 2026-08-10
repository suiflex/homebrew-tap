# Rendered by .github/workflows/release-build.yml into suiflex/homebrew-tap.
# Placeholders (0.34.1, https://github.com/suiflex/rdb/releases/download/v0.34.1, 89592c89c18dfdbf08424753f8203077df7c1995117778ba848d8514ae5cefe3, d1f49d862754ce6ad6c645156d13b72c15461c4a4a81b2aed517c128a2b9b4c8, f22213831d268301956eb60a7fb3add53bc93e6d1bd15394d178def37aafefee) are
# filled in via sed on each release. Edit the template, not the generated file.
class Rdb < Formula
  desc "Native cross-platform database manager (PostgreSQL, MySQL, Redis, MongoDB)"
  homepage "https://github.com/suiflex/rdb"
  version "0.34.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/suiflex/rdb/releases/download/v0.34.1/rdb-aarch64-apple-darwin.tar.gz"
      sha256 "89592c89c18dfdbf08424753f8203077df7c1995117778ba848d8514ae5cefe3"
    end
    on_intel do
      url "https://github.com/suiflex/rdb/releases/download/v0.34.1/rdb-x86_64-apple-darwin.tar.gz"
      sha256 "d1f49d862754ce6ad6c645156d13b72c15461c4a4a81b2aed517c128a2b9b4c8"
    end
  end

  on_linux do
    url "https://github.com/suiflex/rdb/releases/download/v0.34.1/rdb-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "f22213831d268301956eb60a7fb3add53bc93e6d1bd15394d178def37aafefee"
  end

  def install
    bin.install "rdb"
  end

  test do
    assert_match "rdb", shell_output("#{bin}/rdb --version")
  end
end
