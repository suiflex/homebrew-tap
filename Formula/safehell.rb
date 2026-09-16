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
  version "0.6.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/suiflex/SafeHell/releases/download/v0.6.1/safehell-macos-aarch64.tar.gz"
      sha256 "092738179da4a01d1884f074109a780c29be7b1d44b41a0a1901123aeb3d05e1"
    end
    on_intel do
      url "https://github.com/suiflex/SafeHell/releases/download/v0.6.1/safehell-macos-x86_64.tar.gz"
      sha256 "a87a121a6b56e69a3c3efc97caa304076d063960dc42332baaaa9a7ebfadc970"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/suiflex/SafeHell/releases/download/v0.6.1/safehell-linux-aarch64.tar.gz"
      sha256 "9be7fbb05f7c736d819fb0efffbce76faec2ed86d516fdbc268c2cc893d86a96"
    end
    on_intel do
      url "https://github.com/suiflex/SafeHell/releases/download/v0.6.1/safehell-linux-x86_64.tar.gz"
      sha256 "5f3b03d9e43b290e506e3fb64237b0960bce1c5537528b3f45aaf66ee06e3d90"
    end
  end

  def install
    bin.install "safehell"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/safehell --version")
  end
end
