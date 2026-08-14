# Rendered by .github/workflows/release-build.yml into suiflex/homebrew-tap.
# Placeholders (0.38.0, https://github.com/suiflex/rdb/releases/download/v0.38.0, 5458a176f73012796128f737317ca60c71156685af847ed6e160780f9b0f3b50, 3c84f4125f0152968409bc67a237e8d69e8feb3afeb3ad3b6441679f9e230a40, ec8bbe3a6c3f8f19ac75e8bba97c5da13bc1988c19472774b246453ce699ae25) are
# filled in via sed on each release. Edit the template, not the generated file.
class Rdb < Formula
  desc "Native cross-platform database manager (PostgreSQL, MySQL, Redis, MongoDB)"
  homepage "https://github.com/suiflex/rdb"
  version "0.38.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/suiflex/rdb/releases/download/v0.38.0/rdb-aarch64-apple-darwin.tar.gz"
      sha256 "5458a176f73012796128f737317ca60c71156685af847ed6e160780f9b0f3b50"
    end
    on_intel do
      url "https://github.com/suiflex/rdb/releases/download/v0.38.0/rdb-x86_64-apple-darwin.tar.gz"
      sha256 "3c84f4125f0152968409bc67a237e8d69e8feb3afeb3ad3b6441679f9e230a40"
    end
  end

  on_linux do
    url "https://github.com/suiflex/rdb/releases/download/v0.38.0/rdb-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "ec8bbe3a6c3f8f19ac75e8bba97c5da13bc1988c19472774b246453ce699ae25"
  end

  def install
    bin.install "rdb"
  end

  test do
    assert_match "rdb", shell_output("#{bin}/rdb --version")
  end
end
