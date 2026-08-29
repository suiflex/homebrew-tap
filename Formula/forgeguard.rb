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
  version "0.15.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/suiflex/ForgeGuard/releases/download/v0.15.0/forgeguard-macos-aarch64.tar.gz"
      sha256 "e504630ca49b0fce0340e4a72b698fed05266493deac294398889825620efbe8"
    end
    on_intel do
      url "https://github.com/suiflex/ForgeGuard/releases/download/v0.15.0/forgeguard-macos-x86_64.tar.gz"
      sha256 "25b2ee75f562f476fa34e741ae2cbb2d8c509fba1bdb037737d3c3d92d8f7306"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/suiflex/ForgeGuard/releases/download/v0.15.0/forgeguard-linux-aarch64.tar.gz"
      sha256 "8c4e41037469e30eed2e5af9573973e4c2a11b11fa0785aeaa8b4aa7d8b9843e"
    end
    on_intel do
      url "https://github.com/suiflex/ForgeGuard/releases/download/v0.15.0/forgeguard-linux-x86_64.tar.gz"
      sha256 "454a61536a1ba9adf0bb56c782da8943b45965952c70927ea6757a01403c1886"
    end
  end

  def install
    bin.install "forgeguard"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/forgeguard --version")
  end
end
