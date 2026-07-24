# Rendered by .github/workflows/release-build.yml into suiflex/homebrew-tap.
# Placeholders (0.23.0, https://github.com/suiflex/rdb/releases/download/v0.23.0, d6e7d965a885a0f03cd623444456edcc4ddb5df18c5a8a8cc0df2569d4ce585d, d6be03db1d78891eb438d4a31f3b9c2e1b8a3d391c22b1c34ee2d10229bfdb67, 06e51b4bbda8d38a9b9796c9327f76ed4e8bd3c0ec605f1d3b060e635704dad6) are
# filled in via sed on each release. Edit the template, not the generated file.
class Rdb < Formula
  desc "Native cross-platform database manager (PostgreSQL, MySQL, Redis, MongoDB)"
  homepage "https://github.com/suiflex/rdb"
  version "0.23.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/suiflex/rdb/releases/download/v0.23.0/rdb-aarch64-apple-darwin.tar.gz"
      sha256 "d6e7d965a885a0f03cd623444456edcc4ddb5df18c5a8a8cc0df2569d4ce585d"
    end
    on_intel do
      url "https://github.com/suiflex/rdb/releases/download/v0.23.0/rdb-x86_64-apple-darwin.tar.gz"
      sha256 "d6be03db1d78891eb438d4a31f3b9c2e1b8a3d391c22b1c34ee2d10229bfdb67"
    end
  end

  on_linux do
    url "https://github.com/suiflex/rdb/releases/download/v0.23.0/rdb-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "06e51b4bbda8d38a9b9796c9327f76ed4e8bd3c0ec605f1d3b060e635704dad6"
  end

  def install
    bin.install "rdb"
  end

  test do
    assert_match "rdb", shell_output("#{bin}/rdb --version")
  end
end
