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
      sha256 "3921d355a34bed318c4b3df35c2d9a6d0c4655afa02b4efc9dc532ad69e3e07b"
    end
    on_intel do
      url "https://github.com/suiflex/ForgeGuard/releases/download/v0.19.0/forgeguard-macos-x86_64.tar.gz"
      sha256 "1819ebdfd807ed5dd07a8a3f72f8f82c4fc0b7669fdbb639e8bb7841931d7bd7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/suiflex/ForgeGuard/releases/download/v0.19.0/forgeguard-linux-aarch64.tar.gz"
      sha256 "2821bb16c1a91d0572dec7bc471034778a371b7f43f1c6768b8608b248a0e49a"
    end
    on_intel do
      url "https://github.com/suiflex/ForgeGuard/releases/download/v0.19.0/forgeguard-linux-x86_64.tar.gz"
      sha256 "549876b9ef4514574084798b80db8b7bd598264725fd7670dfab64647e924df4"
    end
  end

  def install
    bin.install "forgeguard"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/forgeguard --version")
  end
end
