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
  version "0.1.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/suiflex/FluxGuard/releases/download/v0.1.3/fluxguard-macos-aarch64.tar.gz"
      sha256 "ecf848999384b853ff40fc4d6ccedf56c59af1e5af469104004b9f920989b7cc"
    end
    on_intel do
      url "https://github.com/suiflex/FluxGuard/releases/download/v0.1.3/fluxguard-macos-x86_64.tar.gz"
      sha256 "f09e99d2e84388a32857218e90f63bffee1b57130fd169a249acb369233359ae"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/suiflex/FluxGuard/releases/download/v0.1.3/fluxguard-linux-aarch64.tar.gz"
      sha256 "6fa71677b38228f32edaa925bee5cdbdf1fa4bf2dc30cdf54c44d0c16ff44460"
    end
    on_intel do
      url "https://github.com/suiflex/FluxGuard/releases/download/v0.1.3/fluxguard-linux-x86_64.tar.gz"
      sha256 "834acc1798de113b8c95516bd546cf44d8a55904d8c6795f245d057f2ace3c53"
    end
  end

  def install
    bin.install "fluxguard"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fluxguard --version")
  end
end
