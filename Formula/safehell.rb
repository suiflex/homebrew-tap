# Template for suiflex/homebrew-tap Formula/safehell.rb.
#
# .github/workflows/release-build.yml renders this with sed on every tagged
# release, filling the placeholders below from that run's build artifacts. Edit
# this template, never the generated file in the tap: the next release
# overwrites it.
#
# The class name follows the file name, so Formula/safehell.rb must declare
# Safehell.
class Safehell < Formula
  desc "Approval-gated SSH broker for AI coding agents"
  homepage "https://github.com/suiflex/SafeHell"
  version "0.6.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/suiflex/SafeHell/releases/download/v0.6.0/safehell-macos-aarch64.tar.gz"
      sha256 "9cf70710fd5ecf7c8e10f94d371c433cda94a53f2c995801636d93118a3f63c9"
    end
    on_intel do
      url "https://github.com/suiflex/SafeHell/releases/download/v0.6.0/safehell-macos-x86_64.tar.gz"
      sha256 "258eb6021cf069c4c514080cf8e18e9127b90d12a6a4a97b8b2bff5d54a7e8ab"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/suiflex/SafeHell/releases/download/v0.6.0/safehell-linux-aarch64.tar.gz"
      sha256 "9e33b9fc8d677d44f37799fcfd77d24550b97b50debf08bce10e2e8ed2186fe0"
    end
    on_intel do
      url "https://github.com/suiflex/SafeHell/releases/download/v0.6.0/safehell-linux-x86_64.tar.gz"
      sha256 "c0e707d7f82001d68562effedaab94bed91cb30f9f7b97cbfac66506e3cd7771"
    end
  end

  def install
    bin.install "safehell"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/safehell --version")
  end
end
