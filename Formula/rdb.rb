# Rendered by .github/workflows/release-build.yml into suiflex/homebrew-tap.
# Placeholders (0.28.0, https://github.com/suiflex/rdb/releases/download/v0.28.0, e39cf112f8d5d9f3a59a26caf97eb19dbe6432d8dc16965367a6b106aa1c4f58, 22f639bf0c65f4a6feebd208634b7f8c39565c9fa14e3e2eb194982a412f6fa1, 2271695a28f56a885b1adf909382534172083f5b94d61882d6b7c66c4f8eae27) are
# filled in via sed on each release. Edit the template, not the generated file.
class Rdb < Formula
  desc "Native cross-platform database manager (PostgreSQL, MySQL, Redis, MongoDB)"
  homepage "https://github.com/suiflex/rdb"
  version "0.28.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/suiflex/rdb/releases/download/v0.28.0/rdb-aarch64-apple-darwin.tar.gz"
      sha256 "e39cf112f8d5d9f3a59a26caf97eb19dbe6432d8dc16965367a6b106aa1c4f58"
    end
    on_intel do
      url "https://github.com/suiflex/rdb/releases/download/v0.28.0/rdb-x86_64-apple-darwin.tar.gz"
      sha256 "22f639bf0c65f4a6feebd208634b7f8c39565c9fa14e3e2eb194982a412f6fa1"
    end
  end

  on_linux do
    url "https://github.com/suiflex/rdb/releases/download/v0.28.0/rdb-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "2271695a28f56a885b1adf909382534172083f5b94d61882d6b7c66c4f8eae27"
  end

  def install
    bin.install "rdb"
  end

  test do
    assert_match "rdb", shell_output("#{bin}/rdb --version")
  end
end
