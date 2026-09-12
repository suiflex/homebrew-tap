# Template for suiflex/homebrew-tap Formula/fluxguard.rb.
#
# .github/workflows/release-build.yml renders this with sed on every tagged
# release, filling the placeholders below from that run's build artifacts. Edit
# this template, never the generated file in the tap: the next release
# overwrites it.
#
# The class name follows the file name, so Formula/fluxguard.rb must declare
# Fluxguard.
class Fluxguard < Formula
  desc "Provider-agnostic resource awareness layer for AI coding agents"
  homepage "https://github.com/suiflex/FluxGuard"
  version "0.1.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/suiflex/FluxGuard/releases/download/v0.1.2/fluxguard-macos-aarch64.tar.gz"
      sha256 "be2b87d27cee4a7147f14cbc71644181bad03cd53eea84267d87aac1901caad5"
    end
    on_intel do
      url "https://github.com/suiflex/FluxGuard/releases/download/v0.1.2/fluxguard-macos-x86_64.tar.gz"
      sha256 "a72e5c28e47c889d584ab2d364183f9639fbad609939f13004bef8b755ca51e4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/suiflex/FluxGuard/releases/download/v0.1.2/fluxguard-linux-aarch64.tar.gz"
      sha256 "d358c55215739dd83bdde85bb26e874bd3b921c4dfdda383c483aff95a2f7dd1"
    end
    on_intel do
      url "https://github.com/suiflex/FluxGuard/releases/download/v0.1.2/fluxguard-linux-x86_64.tar.gz"
      sha256 "aa6183f32b9c208f423a1dc0d2e24ab86e883fa26f0e58e88d0d5b329d808f98"
    end
  end

  def install
    bin.install "fluxguard"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fluxguard --version")
  end
end
