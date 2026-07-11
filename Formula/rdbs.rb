# Rendered by .github/workflows/release-build.yml into suiflex/homebrew-tap.
# Placeholders (0.10.0, https://github.com/suiflex/rdb/releases/download/v0.10.0, 7d1232f15d8e602c34eb696c6f19f31a19050d22a36196218de3ce5b5af20328, 2ac2f61bb593dd363f8bcb9bf5cc450a40d35213ab6ef3b967d85b3be14fd9db, 96ef4cb9aa0a389bcda769cbebace4247e4e6e1127bc0cb3c6709a0e60b470b5) are
# filled in via sed on each release. Edit the template, not the generated file.
class Rdbs < Formula
  desc "Native cross-platform database manager (PostgreSQL, MySQL, Redis, MongoDB)"
  homepage "https://github.com/suiflex/rdb"
  version "0.10.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/suiflex/rdb/releases/download/v0.10.0/rdbs-aarch64-apple-darwin.tar.gz"
      sha256 "7d1232f15d8e602c34eb696c6f19f31a19050d22a36196218de3ce5b5af20328"
    end
    on_intel do
      url "https://github.com/suiflex/rdb/releases/download/v0.10.0/rdbs-x86_64-apple-darwin.tar.gz"
      sha256 "2ac2f61bb593dd363f8bcb9bf5cc450a40d35213ab6ef3b967d85b3be14fd9db"
    end
  end

  on_linux do
    url "https://github.com/suiflex/rdb/releases/download/v0.10.0/rdbs-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "96ef4cb9aa0a389bcda769cbebace4247e4e6e1127bc0cb3c6709a0e60b470b5"
  end

  def install
    bin.install "rdbs"
  end

  test do
    assert_match "rdbs", shell_output("#{bin}/rdbs --version")
  end
end
