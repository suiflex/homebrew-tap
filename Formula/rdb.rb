# Rendered by .github/workflows/release-build.yml into suiflex/homebrew-tap.
# Placeholders (0.25.0, https://github.com/suiflex/rdb/releases/download/v0.25.0, 018535e49bced471cda20b8aa98737ce3a48eb90acb0b53c110055e19bb1ae37, b22fbfdd263de0fea783cc6f21f2f66ea98950cdbe5114618491bec191251e5d, 62d190fb7ca661a897d226023bebdb87bc1b1df70a8a08c9c5e8f681eeaf6a34) are
# filled in via sed on each release. Edit the template, not the generated file.
class Rdb < Formula
  desc "Native cross-platform database manager (PostgreSQL, MySQL, Redis, MongoDB)"
  homepage "https://github.com/suiflex/rdb"
  version "0.25.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/suiflex/rdb/releases/download/v0.25.0/rdb-aarch64-apple-darwin.tar.gz"
      sha256 "018535e49bced471cda20b8aa98737ce3a48eb90acb0b53c110055e19bb1ae37"
    end
    on_intel do
      url "https://github.com/suiflex/rdb/releases/download/v0.25.0/rdb-x86_64-apple-darwin.tar.gz"
      sha256 "b22fbfdd263de0fea783cc6f21f2f66ea98950cdbe5114618491bec191251e5d"
    end
  end

  on_linux do
    url "https://github.com/suiflex/rdb/releases/download/v0.25.0/rdb-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "62d190fb7ca661a897d226023bebdb87bc1b1df70a8a08c9c5e8f681eeaf6a34"
  end

  def install
    bin.install "rdb"
  end

  test do
    assert_match "rdb", shell_output("#{bin}/rdb --version")
  end
end
