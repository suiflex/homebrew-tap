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
  version "0.19.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/suiflex/ForgeGuard/releases/download/v0.19.0/forgeguard-macos-aarch64.tar.gz"
      sha256 "2ac686efeb75e26a00a2382667c17e3b48b16d8423c9ba1d4f95a785b3bc7819"
    end
    on_intel do
      url "https://github.com/suiflex/ForgeGuard/releases/download/v0.19.0/forgeguard-macos-x86_64.tar.gz"
      sha256 "5a91328b8f0fe50207a8b6ef4c7285627008c2232b9097ae20af100d80fcea7a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/suiflex/ForgeGuard/releases/download/v0.19.0/forgeguard-linux-aarch64.tar.gz"
      sha256 "a987a3a0fc3f74a450ff629f153afd79f9c50ab28793a5826887a78dfd440735"
    end
    on_intel do
      url "https://github.com/suiflex/ForgeGuard/releases/download/v0.19.0/forgeguard-linux-x86_64.tar.gz"
      sha256 "dc029374133dabfc2ec3052e169f7a6739ba925185eddf3e527852cce6e55c52"
    end
  end

  def install
    bin.install "forgeguard"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/forgeguard --version")
  end
end
