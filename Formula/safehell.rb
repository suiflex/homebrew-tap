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
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/suiflex/SafeHell/releases/download/v0.2.0/safehell-macos-aarch64.tar.gz"
      sha256 "c026d7ef7f86c558ff1aabee769ed27bf09958e7d58098afdcc0072a0e5188f0"
    end
    on_intel do
      url "https://github.com/suiflex/SafeHell/releases/download/v0.2.0/safehell-macos-x86_64.tar.gz"
      sha256 "5f68b278bc4326409b874b37770d80de3341f8ea7bfa05a08dec72175dfefd37"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/suiflex/SafeHell/releases/download/v0.2.0/safehell-linux-aarch64.tar.gz"
      sha256 "c9bb83f5f95f04c2288fdaf732cd35ecd7b9bf6b09570bd043a8a3a845d7c078"
    end
    on_intel do
      url "https://github.com/suiflex/SafeHell/releases/download/v0.2.0/safehell-linux-x86_64.tar.gz"
      sha256 "1a937426d462482046577e25a08b7b429cf9c50fa401a55f3d0806aa43614c57"
    end
  end

  def install
    bin.install "safehell"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/safehell --version")
  end
end
