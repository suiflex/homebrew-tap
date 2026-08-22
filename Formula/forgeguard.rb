# Template for suiflex/homebrew-tap Formula/forgeguard.rb.
#
# .github/workflows/release.yml renders this with sed on every tagged release, filling the
# placeholders below from that run's build artifacts. Edit this template, never the
# generated file in the tap: the next release overwrites it.
#
# The class name follows the file name, so Formula/forgeguard.rb must declare Forgeguard.
class Forgeguard < Formula
  desc "Token-efficient, language-agnostic engineering guardrails for AI coding agents"
  homepage "https://github.com/suiflex/ForgeGuard"
  version "0.14.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/suiflex/ForgeGuard/releases/download/v0.14.0/forgeguard-macos-aarch64.tar.gz"
      sha256 "2cbd22d0d1e79aee88eb173404b2303c473ad6401f38cae58d28c3aded0ac690"
    end
    on_intel do
      url "https://github.com/suiflex/ForgeGuard/releases/download/v0.14.0/forgeguard-macos-x86_64.tar.gz"
      sha256 "d675f7a8abfbc0cb0a911239f4e5572d6a3abf57c292f04551d06ba51bba9743"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/suiflex/ForgeGuard/releases/download/v0.14.0/forgeguard-linux-aarch64.tar.gz"
      sha256 "26ad7427ff3879006f30c384f1a0e16495f23496613eb034468b57e0bb6b6b55"
    end
    on_intel do
      url "https://github.com/suiflex/ForgeGuard/releases/download/v0.14.0/forgeguard-linux-x86_64.tar.gz"
      sha256 "68c610d898550ebae5a44967a02f3d422b2cabb078cb9b6ba414455831e83b3e"
    end
  end

  def install
    bin.install "forgeguard"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/forgeguard --version")
  end
end
