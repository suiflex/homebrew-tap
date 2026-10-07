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
  version "0.21.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/suiflex/ForgeGuard/releases/download/v0.21.0/forgeguard-macos-aarch64.tar.gz"
      sha256 "fbfa8febeb28a89f3ef209efe7d9a5f01552e0650a7b48cfd93051c1ffa71c6c"
    end
    on_intel do
      url "https://github.com/suiflex/ForgeGuard/releases/download/v0.21.0/forgeguard-macos-x86_64.tar.gz"
      sha256 "1c0ad7f0a0eaeef0624e293ac097cc067a80fb15bc62ed9d67825e6f9a56fa42"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/suiflex/ForgeGuard/releases/download/v0.21.0/forgeguard-linux-aarch64.tar.gz"
      sha256 "43a3655cf32f126be6784a95779c66bf0da7607b98344db7dbd2a34adf266ca0"
    end
    on_intel do
      url "https://github.com/suiflex/ForgeGuard/releases/download/v0.21.0/forgeguard-linux-x86_64.tar.gz"
      sha256 "142e6004d1c09680493ff16d50802f74a10cdbb3eee04b24dd7ec3b807d31386"
    end
  end

  def install
    bin.install "forgeguard"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/forgeguard --version")
  end
end
