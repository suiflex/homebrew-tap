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
      sha256 "cefd4610c671a9635d29d175ebf7685150730d2d960bb6ac938482bdfcb370a1"
    end
    on_intel do
      url "https://github.com/suiflex/ForgeGuard/releases/download/v0.17.0/forgeguard-macos-x86_64.tar.gz"
      sha256 "8b8a770bb398561d9b8c5711c5f0404a6275af8eab0713a3330104ec2a38e255"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/suiflex/ForgeGuard/releases/download/v0.17.0/forgeguard-linux-aarch64.tar.gz"
      sha256 "a839b949207b761b89fc49f80b1db2131c1886084acedc53c32e7d55ffc0d455"
    end
    on_intel do
      url "https://github.com/suiflex/ForgeGuard/releases/download/v0.17.0/forgeguard-linux-x86_64.tar.gz"
      sha256 "981fa5679214391d0166314b8dae159b395af981bb9c54e16cd901cbd5a887cd"
    end
  end

  def install
    bin.install "forgeguard"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/forgeguard --version")
  end
end
