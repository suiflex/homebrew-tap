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
      sha256 "808b0f315e38b3400c1dbc7508dfe849bf471ca6a6eab8b0506954ee787a0123"
    end
    on_intel do
      url "https://github.com/suiflex/ForgeGuard/releases/download/v0.12.0/forgeguard-macos-x86_64.tar.gz"
      sha256 "37f16038945c3457c2da0275f3ff88fc389bfd91d1a069ea961736425fc0820d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/suiflex/ForgeGuard/releases/download/v0.12.0/forgeguard-linux-aarch64.tar.gz"
      sha256 "3800710ee522f35fce7193bc8323ea4f42f4701beda7af343417dbd9809266e8"
    end
    on_intel do
      url "https://github.com/suiflex/ForgeGuard/releases/download/v0.12.0/forgeguard-linux-x86_64.tar.gz"
      sha256 "c1bedf1ebc6560347768fcc24451ea2b0b0bbca3408deff580fe2a43145907f3"
    end
  end

  def install
    bin.install "forgeguard"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/forgeguard --version")
  end
end
