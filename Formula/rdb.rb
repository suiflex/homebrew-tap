# Rendered by .github/workflows/release-build.yml into suiflex/homebrew-tap.
# Placeholders (0.32.1, https://github.com/suiflex/rdb/releases/download/v0.32.1, f8b4130a5bce843127cc2b582e3afd1e1ba63ce5a0bbb61b97f7f0275577414a, 2f354f837b6b7cabc2199b75753f86fdcf08ede6b02c2d961184a29c8a480a22, d6a227afa9e0d41f912281ae50bbc54bc950f0f3cff6ac090eabb2bf2186d907) are
# filled in via sed on each release. Edit the template, not the generated file.
class Rdb < Formula
  desc "Native cross-platform database manager (PostgreSQL, MySQL, Redis, MongoDB)"
  homepage "https://github.com/suiflex/rdb"
  version "0.32.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/suiflex/rdb/releases/download/v0.32.1/rdb-aarch64-apple-darwin.tar.gz"
      sha256 "f8b4130a5bce843127cc2b582e3afd1e1ba63ce5a0bbb61b97f7f0275577414a"
    end
    on_intel do
      url "https://github.com/suiflex/rdb/releases/download/v0.32.1/rdb-x86_64-apple-darwin.tar.gz"
      sha256 "2f354f837b6b7cabc2199b75753f86fdcf08ede6b02c2d961184a29c8a480a22"
    end
  end

  on_linux do
    url "https://github.com/suiflex/rdb/releases/download/v0.32.1/rdb-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "d6a227afa9e0d41f912281ae50bbc54bc950f0f3cff6ac090eabb2bf2186d907"
  end

  def install
    bin.install "rdb"
  end

  test do
    assert_match "rdb", shell_output("#{bin}/rdb --version")
  end
end
