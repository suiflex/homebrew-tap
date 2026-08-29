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
      sha256 "9938a4cf24b9600a1e5a475ba80d6a4af6072bfe86cfa5b849b0b9b9d0f66948"
    end
    on_intel do
      url "https://github.com/suiflex/ForgeGuard/releases/download/v0.15.0/forgeguard-macos-x86_64.tar.gz"
      sha256 "0a6b3513a3bfb293a9d2e61ea22be6e296eb4dc25a8b273a6eedf2234469b06c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/suiflex/ForgeGuard/releases/download/v0.15.0/forgeguard-linux-aarch64.tar.gz"
      sha256 "f94223d5ea699a556022287e6b15a049ae5c91096189f58936e8facfd003022d"
    end
    on_intel do
      url "https://github.com/suiflex/ForgeGuard/releases/download/v0.15.0/forgeguard-linux-x86_64.tar.gz"
      sha256 "bc5b5ff4e5f27ddf7d43e5765f5b1f1300738e84fe1e8a0c36d6c019162291c9"
    end
  end

  def install
    bin.install "forgeguard"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/forgeguard --version")
  end
end
