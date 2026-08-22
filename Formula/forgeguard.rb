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
  version "0.13.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/suiflex/ForgeGuard/releases/download/v0.13.1/forgeguard-macos-aarch64.tar.gz"
      sha256 "b20eba5cb759d63e20ec8009c6e51616de7517374f1f06581868229088fb135a"
    end
    on_intel do
      url "https://github.com/suiflex/ForgeGuard/releases/download/v0.13.1/forgeguard-macos-x86_64.tar.gz"
      sha256 "dfaed5086ff72b7c08faf91dbbe0897356092c2eae46a68c3d4af126ee49b4b4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/suiflex/ForgeGuard/releases/download/v0.13.1/forgeguard-linux-aarch64.tar.gz"
      sha256 "ac8f37d69fc89dce7864ddeadcf3a6f228f2e84c30574316a22e288cf0a54863"
    end
    on_intel do
      url "https://github.com/suiflex/ForgeGuard/releases/download/v0.13.1/forgeguard-linux-x86_64.tar.gz"
      sha256 "82acb3f0c51790fb2024e96a3de9fdfc82a55e23a6f5589d01a5ce3b7dd3c943"
    end
  end

  def install
    bin.install "forgeguard"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/forgeguard --version")
  end
end
