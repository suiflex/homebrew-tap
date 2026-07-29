# Rendered by .github/workflows/release-build.yml into suiflex/homebrew-tap.
# Placeholders (0.27.0, https://github.com/suiflex/rdb/releases/download/v0.27.0, b0b397a44ca49228b823103f1ec522a1cfa390c367cbc3fd289cf6ea17652226, 10fb5ed4730cd27972a693bd363c277fd44e8af6c0aa3747710a4dcad499303f, 6fa08b73501ec75177dd2a82545c2e064c422a725c42946a091fe1655ebf5b0b) are
# filled in via sed on each release. Edit the template, not the generated file.
class Rdb < Formula
  desc "Native cross-platform database manager (PostgreSQL, MySQL, Redis, MongoDB)"
  homepage "https://github.com/suiflex/rdb"
  version "0.27.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/suiflex/rdb/releases/download/v0.27.0/rdb-aarch64-apple-darwin.tar.gz"
      sha256 "b0b397a44ca49228b823103f1ec522a1cfa390c367cbc3fd289cf6ea17652226"
    end
    on_intel do
      url "https://github.com/suiflex/rdb/releases/download/v0.27.0/rdb-x86_64-apple-darwin.tar.gz"
      sha256 "10fb5ed4730cd27972a693bd363c277fd44e8af6c0aa3747710a4dcad499303f"
    end
  end

  on_linux do
    url "https://github.com/suiflex/rdb/releases/download/v0.27.0/rdb-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "6fa08b73501ec75177dd2a82545c2e064c422a725c42946a091fe1655ebf5b0b"
  end

  def install
    bin.install "rdb"
  end

  test do
    assert_match "rdb", shell_output("#{bin}/rdb --version")
  end
end
