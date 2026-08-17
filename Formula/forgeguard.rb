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
  version "0.12.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/suiflex/ForgeGuard/releases/download/v0.12.0/forgeguard-macos-aarch64.tar.gz"
      sha256 "474b83362acaab9956e1883c9c914bf69153c1b7d71ab767b2f28e7d125a749d"
    end
    on_intel do
      url "https://github.com/suiflex/ForgeGuard/releases/download/v0.12.0/forgeguard-macos-x86_64.tar.gz"
      sha256 "170c134dff562bee1b88126434bc62fda3a00dee53642d9e473b7500ca3f69d9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/suiflex/ForgeGuard/releases/download/v0.12.0/forgeguard-linux-aarch64.tar.gz"
      sha256 "ae8a5ba12dfa496bc67c42d7ee329fd300566f4007f907c6503f21e10f34cdf4"
    end
    on_intel do
      url "https://github.com/suiflex/ForgeGuard/releases/download/v0.12.0/forgeguard-linux-x86_64.tar.gz"
      sha256 "d6cbb8681d7bcd194b68ca486f47608a82e25d6247d29be39d5b606d51ca05e7"
    end
  end

  def install
    bin.install "forgeguard"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/forgeguard --version")
  end
end
