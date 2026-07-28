# Rendered by .github/workflows/release-build.yml into suiflex/homebrew-tap.
# Placeholders (0.25.2, https://github.com/suiflex/rdb/releases/download/v0.25.2, 7818fd83693313d9fe5dabdc9b97ca641437341f0834abce9bb9a8e446952a7e, 4abe5e43fd8dfe959e0fd7c3796511bdf294e5c7979f8a728a36af9f2f417f02, f1e65240ea57d0a45a7edc6ed61d78bc5c4bb7898221e6cdf996bec20f020925) are
# filled in via sed on each release. Edit the template, not the generated file.
class Rdb < Formula
  desc "Native cross-platform database manager (PostgreSQL, MySQL, Redis, MongoDB)"
  homepage "https://github.com/suiflex/rdb"
  version "0.25.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/suiflex/rdb/releases/download/v0.25.2/rdb-aarch64-apple-darwin.tar.gz"
      sha256 "7818fd83693313d9fe5dabdc9b97ca641437341f0834abce9bb9a8e446952a7e"
    end
    on_intel do
      url "https://github.com/suiflex/rdb/releases/download/v0.25.2/rdb-x86_64-apple-darwin.tar.gz"
      sha256 "4abe5e43fd8dfe959e0fd7c3796511bdf294e5c7979f8a728a36af9f2f417f02"
    end
  end

  on_linux do
    url "https://github.com/suiflex/rdb/releases/download/v0.25.2/rdb-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "f1e65240ea57d0a45a7edc6ed61d78bc5c4bb7898221e6cdf996bec20f020925"
  end

  def install
    bin.install "rdb"
  end

  test do
    assert_match "rdb", shell_output("#{bin}/rdb --version")
  end
end
