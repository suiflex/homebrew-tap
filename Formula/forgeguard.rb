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
  version "0.13.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/suiflex/ForgeGuard/releases/download/v0.13.0/forgeguard-macos-aarch64.tar.gz"
      sha256 "05e936a922655a2237591c8802bb90240592d43a8bee9d1ff22d8e2afd6b7256"
    end
    on_intel do
      url "https://github.com/suiflex/ForgeGuard/releases/download/v0.13.0/forgeguard-macos-x86_64.tar.gz"
      sha256 "f76f3f908729034bda2aa03196f1f5d91d62b3bc3df28fe242f1ebafe6f12ec4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/suiflex/ForgeGuard/releases/download/v0.13.0/forgeguard-linux-aarch64.tar.gz"
      sha256 "6444a3951159c7c6ffd51a5723e606f86de62ef81184dd5a95e0b9119fbe9de0"
    end
    on_intel do
      url "https://github.com/suiflex/ForgeGuard/releases/download/v0.13.0/forgeguard-linux-x86_64.tar.gz"
      sha256 "dff3746b61e0cc5ec785d36276d784ace953120c9014f5fc633ca3a9ddcf58b0"
    end
  end

  def install
    bin.install "forgeguard"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/forgeguard --version")
  end
end
