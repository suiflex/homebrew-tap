# Rendered by .github/workflows/release-build.yml into suiflex/homebrew-tap.
# Placeholders (0.13.0, https://github.com/suiflex/rdb/releases/download/v0.13.0, 82a0a2c26380d0c83930a159412f8fc41d9541393a4f9f1c86e60ce62713c12f, e8e730da8a6ec174d49e9b9f74fd23388114e4596eecd5ff683fbae0e52dc3f4, 836d650606d72e5890976c2fd89991f82d6da02d06b78879ac3fdd7913e42f83) are
# filled in via sed on each release. Edit the template, not the generated file.
class Rdbs < Formula
  desc "Native cross-platform database manager (PostgreSQL, MySQL, Redis, MongoDB)"
  homepage "https://github.com/suiflex/rdb"
  version "0.13.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/suiflex/rdb/releases/download/v0.13.0/rdbs-aarch64-apple-darwin.tar.gz"
      sha256 "82a0a2c26380d0c83930a159412f8fc41d9541393a4f9f1c86e60ce62713c12f"
    end
    on_intel do
      url "https://github.com/suiflex/rdb/releases/download/v0.13.0/rdbs-x86_64-apple-darwin.tar.gz"
      sha256 "e8e730da8a6ec174d49e9b9f74fd23388114e4596eecd5ff683fbae0e52dc3f4"
    end
  end

  on_linux do
    url "https://github.com/suiflex/rdb/releases/download/v0.13.0/rdbs-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "836d650606d72e5890976c2fd89991f82d6da02d06b78879ac3fdd7913e42f83"
  end

  def install
    bin.install "rdbs"
  end

  test do
    assert_match "rdbs", shell_output("#{bin}/rdbs --version")
  end
end
