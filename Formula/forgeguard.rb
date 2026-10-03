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
  version "0.20.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/suiflex/ForgeGuard/releases/download/v0.20.0/forgeguard-macos-aarch64.tar.gz"
      sha256 "cc9a7e194674b5cee4ce11ef3a3a6502a40a04e56eca4938416be79f9d6b4882"
    end
    on_intel do
      url "https://github.com/suiflex/ForgeGuard/releases/download/v0.20.0/forgeguard-macos-x86_64.tar.gz"
      sha256 "4cab4feafb64c7fcbc6fa5e6d58a8715d0f46e501e00686700420f95ff30e594"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/suiflex/ForgeGuard/releases/download/v0.20.0/forgeguard-linux-aarch64.tar.gz"
      sha256 "2e7acd0b23ac92f084252ea10331b8df70b219ecabf14af5f4e5ed2be29e4256"
    end
    on_intel do
      url "https://github.com/suiflex/ForgeGuard/releases/download/v0.20.0/forgeguard-linux-x86_64.tar.gz"
      sha256 "da51c5b77ebf46108f2fd51e0835824bad0d878084e2b663619689083ff98230"
    end
  end

  def install
    bin.install "forgeguard"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/forgeguard --version")
  end
end
