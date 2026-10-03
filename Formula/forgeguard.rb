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
  version "0.20.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/suiflex/ForgeGuard/releases/download/v0.20.0/forgeguard-macos-aarch64.tar.gz"
      sha256 "fc7b4691da1c8d69205e1ed44bc4cf87f93818589ff8da450fd213e819f65422"
    end
    on_intel do
      url "https://github.com/suiflex/ForgeGuard/releases/download/v0.20.0/forgeguard-macos-x86_64.tar.gz"
      sha256 "4a83c2572bfc7738f5f859b388f82b7e2c5e4bf19a2cd1c636d4b22a168bfe4f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/suiflex/ForgeGuard/releases/download/v0.20.0/forgeguard-linux-aarch64.tar.gz"
      sha256 "fd21ef83c7b6dcfa8d219ede443c6da2518f8ea0980b8b69e72af7387c551336"
    end
    on_intel do
      url "https://github.com/suiflex/ForgeGuard/releases/download/v0.20.0/forgeguard-linux-x86_64.tar.gz"
      sha256 "9444804070348384039f9b394b8f298ea869c5e6c1acbce0fe93658f1ce9278e"
    end
  end

  def install
    bin.install "forgeguard"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/forgeguard --version")
  end
end
