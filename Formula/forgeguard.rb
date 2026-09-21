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
  version "0.18.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/suiflex/ForgeGuard/releases/download/v0.18.0/forgeguard-macos-aarch64.tar.gz"
      sha256 "cf7aaf0eed598096bcb835fa807522cdc3c2105782e47198542fe6eea1acdf8b"
    end
    on_intel do
      url "https://github.com/suiflex/ForgeGuard/releases/download/v0.18.0/forgeguard-macos-x86_64.tar.gz"
      sha256 "c30ae54356276fb18798ea6197c4b3fe90b0e03bc955f977784b97393b0e0d49"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/suiflex/ForgeGuard/releases/download/v0.18.0/forgeguard-linux-aarch64.tar.gz"
      sha256 "54c0a477c3c55a510a817b428ae087d48fdf51f49afa7a1348ed0d5e9d73b1db"
    end
    on_intel do
      url "https://github.com/suiflex/ForgeGuard/releases/download/v0.18.0/forgeguard-linux-x86_64.tar.gz"
      sha256 "125b951dcd4b9e1801c3874d0f44e618a002dbe5cf2b1636ffd5bcff2e3a03c4"
    end
  end

  def install
    bin.install "forgeguard"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/forgeguard --version")
  end
end
