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
      sha256 "ebe72c5c3a87a6aa8dc40a703157875da02c472cf092e3652b26cef87c48c47a"
    end
    on_intel do
      url "https://github.com/suiflex/ForgeGuard/releases/download/v0.16.0/forgeguard-macos-x86_64.tar.gz"
      sha256 "ac40ba468b403ce9736fb2857404ecdf7e9dd30be5c6b2be211ccc3e7f5e47fd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/suiflex/ForgeGuard/releases/download/v0.16.0/forgeguard-linux-aarch64.tar.gz"
      sha256 "e8752ca7b44f8ed40d25cdf18b6bd6edc74da6ecd7a92af16e7c8ea313a6c657"
    end
    on_intel do
      url "https://github.com/suiflex/ForgeGuard/releases/download/v0.16.0/forgeguard-linux-x86_64.tar.gz"
      sha256 "9e4d71fe3d70eee9ebabb120343d810d2c6ce902ad6d57da7970c17fb52a9c8a"
    end
  end

  def install
    bin.install "forgeguard"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/forgeguard --version")
  end
end
