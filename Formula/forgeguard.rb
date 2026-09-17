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
  version "0.17.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/suiflex/ForgeGuard/releases/download/v0.17.0/forgeguard-macos-aarch64.tar.gz"
      sha256 "42fec67a4d87029372f69f797c48125283a4b57b30d76603d90639043733715b"
    end
    on_intel do
      url "https://github.com/suiflex/ForgeGuard/releases/download/v0.17.0/forgeguard-macos-x86_64.tar.gz"
      sha256 "77c9eb4dace9d64da3c47295d05bc7c2b098b9905d2507cab61a7b1ae74602b3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/suiflex/ForgeGuard/releases/download/v0.17.0/forgeguard-linux-aarch64.tar.gz"
      sha256 "59bbe1f6ae146b7fe9451b8a4ef1fb8da8a517accf9a4e0a80c3544bf0ed1d51"
    end
    on_intel do
      url "https://github.com/suiflex/ForgeGuard/releases/download/v0.17.0/forgeguard-linux-x86_64.tar.gz"
      sha256 "1a0be2a8e3ed7bdc1ce4b56d597f90210a4c1c22b2925d70a46055a01f8a981e"
    end
  end

  def install
    bin.install "forgeguard"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/forgeguard --version")
  end
end
