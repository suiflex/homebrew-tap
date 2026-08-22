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
      sha256 "29702962fc782f79faa9b5a6e815f60557ee32167bfe1d428339e66ed00c5db1"
    end
    on_intel do
      url "https://github.com/suiflex/ForgeGuard/releases/download/v0.14.0/forgeguard-macos-x86_64.tar.gz"
      sha256 "56fbebba8587699a9b8fed5a677d166737c7bf217f8594402778c9bb3fa33774"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/suiflex/ForgeGuard/releases/download/v0.14.0/forgeguard-linux-aarch64.tar.gz"
      sha256 "e05e46fe1f35904c5aecc1e3bbddd1d8071017a8ad2b09b3fd2e127733e0900f"
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
