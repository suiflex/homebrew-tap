# Rendered by .github/workflows/release-build.yml into suiflex/homebrew-tap.
# Placeholders (0.25.1, https://github.com/suiflex/rdb/releases/download/v0.25.1, 879db1049a3eced38e83643c2b98fa798e5b7f95b1cda7945485e9e7db0e3c05, f3b41ecc39c2d833bcefad0507b6a4066fb73e7189aed3133ec51bd16a4dd4a2, 8845e595c5c01c7e879a05628ac1cc6798d98d06bd8f5a2a6080129eee2332ff) are
# filled in via sed on each release. Edit the template, not the generated file.
class Rdb < Formula
  desc "Native cross-platform database manager (PostgreSQL, MySQL, Redis, MongoDB)"
  homepage "https://github.com/suiflex/rdb"
  version "0.25.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/suiflex/rdb/releases/download/v0.25.1/rdb-aarch64-apple-darwin.tar.gz"
      sha256 "879db1049a3eced38e83643c2b98fa798e5b7f95b1cda7945485e9e7db0e3c05"
    end
    on_intel do
      url "https://github.com/suiflex/rdb/releases/download/v0.25.1/rdb-x86_64-apple-darwin.tar.gz"
      sha256 "f3b41ecc39c2d833bcefad0507b6a4066fb73e7189aed3133ec51bd16a4dd4a2"
    end
  end

  on_linux do
    url "https://github.com/suiflex/rdb/releases/download/v0.25.1/rdb-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "8845e595c5c01c7e879a05628ac1cc6798d98d06bd8f5a2a6080129eee2332ff"
  end

  def install
    bin.install "rdb"
  end

  test do
    assert_match "rdb", shell_output("#{bin}/rdb --version")
  end
end
