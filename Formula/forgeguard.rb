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
  version "0.16.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/suiflex/ForgeGuard/releases/download/v0.16.0/forgeguard-macos-aarch64.tar.gz"
      sha256 "59924aae6f7a032fa9ca453b7d9544b4bcb0adbcc7d3a677770176f5ecce9880"
    end
    on_intel do
      url "https://github.com/suiflex/ForgeGuard/releases/download/v0.16.0/forgeguard-macos-x86_64.tar.gz"
      sha256 "7045aa68af65d9333c421fcbe388d21d589fa2e997beff1deb5de4b8d0b345a4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/suiflex/ForgeGuard/releases/download/v0.16.0/forgeguard-linux-aarch64.tar.gz"
      sha256 "10ee9e638256162b0a5ebcc1fe4eb1e82d0bf86d761a7ef6f998d78eedc64961"
    end
    on_intel do
      url "https://github.com/suiflex/ForgeGuard/releases/download/v0.16.0/forgeguard-linux-x86_64.tar.gz"
      sha256 "01fb5d0177083bcfd6e19c3cdd4cd3a19c51eb8ec38aa917a71a7547fde563f0"
    end
  end

  def install
    bin.install "forgeguard"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/forgeguard --version")
  end
end
