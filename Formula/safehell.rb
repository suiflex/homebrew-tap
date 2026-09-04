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
  version "0.4.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/suiflex/SafeHell/releases/download/v0.4.0/safehell-macos-aarch64.tar.gz"
      sha256 "347bbc8d252a3e4ade07ec1802ae5ad30c8c55e0e13042b4d66248f20fc5a310"
    end
    on_intel do
      url "https://github.com/suiflex/SafeHell/releases/download/v0.4.0/safehell-macos-x86_64.tar.gz"
      sha256 "37ff40f08166a88178e17926b5eaf4afed036e2b746a4424bc0abc15d2adc6d5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/suiflex/SafeHell/releases/download/v0.4.0/safehell-linux-aarch64.tar.gz"
      sha256 "d625845183e89fbd5579a42f4dc19b3d048e8c84cd79e8b09851034985f6778f"
    end
    on_intel do
      url "https://github.com/suiflex/SafeHell/releases/download/v0.4.0/safehell-linux-x86_64.tar.gz"
      sha256 "db38f746448ebab74e3baf28b1467411c59dcacf98c5dc169b1547d15e65b133"
    end
  end

  def install
    bin.install "safehell"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/safehell --version")
  end
end
