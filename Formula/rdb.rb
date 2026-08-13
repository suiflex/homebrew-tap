# Rendered by .github/workflows/release-build.yml into suiflex/homebrew-tap.
# Placeholders (0.37.0, https://github.com/suiflex/rdb/releases/download/v0.37.0, 8e912e6698ba83eb221852dff466d12f0480ca10213c189256ee2d83f228fe93, 267534aff3065962c86565edb6df186dafadfee54a37589afaa07606da067222, eae6b1c0edf3de1c2f40edf23601dfeb844631c56ef14eb4ea914c16789338a2) are
# filled in via sed on each release. Edit the template, not the generated file.
class Rdb < Formula
  desc "Native cross-platform database manager (PostgreSQL, MySQL, Redis, MongoDB)"
  homepage "https://github.com/suiflex/rdb"
  version "0.37.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/suiflex/rdb/releases/download/v0.37.0/rdb-aarch64-apple-darwin.tar.gz"
      sha256 "8e912e6698ba83eb221852dff466d12f0480ca10213c189256ee2d83f228fe93"
    end
    on_intel do
      url "https://github.com/suiflex/rdb/releases/download/v0.37.0/rdb-x86_64-apple-darwin.tar.gz"
      sha256 "267534aff3065962c86565edb6df186dafadfee54a37589afaa07606da067222"
    end
  end

  on_linux do
    url "https://github.com/suiflex/rdb/releases/download/v0.37.0/rdb-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "eae6b1c0edf3de1c2f40edf23601dfeb844631c56ef14eb4ea914c16789338a2"
  end

  def install
    bin.install "rdb"
  end

  test do
    assert_match "rdb", shell_output("#{bin}/rdb --version")
  end
end
