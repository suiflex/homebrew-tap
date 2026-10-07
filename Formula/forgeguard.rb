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
      sha256 "1562ba59f80f0cf837b5d8572d82b53e413975d89cbdba1880fd184ae079d576"
    end
    on_intel do
      url "https://github.com/suiflex/ForgeGuard/releases/download/v0.21.0/forgeguard-macos-x86_64.tar.gz"
      sha256 "8a7bfe7e43e4a1ae665f1fc9aed4404e3231e9a8470e479ec514e230b2c6ae2f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/suiflex/ForgeGuard/releases/download/v0.21.0/forgeguard-linux-aarch64.tar.gz"
      sha256 "8a4ec02eab08621416d1b67c444e3e64f9d6df818bf79f13f857090fb9a26f4a"
    end
    on_intel do
      url "https://github.com/suiflex/ForgeGuard/releases/download/v0.21.0/forgeguard-linux-x86_64.tar.gz"
      sha256 "e8a9aa450f2516639597d9c0a75bc3d54e5a2557e728c4b25db6ebe82eb7c3c2"
    end
  end

  def install
    bin.install "forgeguard"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/forgeguard --version")
  end
end
