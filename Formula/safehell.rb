# Template for suiflex/homebrew-tap Formula/safehell.rb.
#
# .github/workflows/release-build.yml renders this with sed on every tagged
# release, filling the placeholders below from that run's build artifacts. Edit
# this template, never the generated file in the tap: the next release
# overwrites it.
#
# The class name follows the file name, so Formula/safehell.rb must declare
# Safehell.
class Safehell < Formula
  desc "Approval-gated SSH broker for AI coding agents"
  homepage "https://github.com/suiflex/SafeHell"
  version "0.5.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/suiflex/SafeHell/releases/download/v0.5.0/safehell-macos-aarch64.tar.gz"
      sha256 "6b1498282560b5ebfdb985c1a1a868d7fcf851d0c1e7d48c9f6b8812802177bf"
    end
    on_intel do
      url "https://github.com/suiflex/SafeHell/releases/download/v0.5.0/safehell-macos-x86_64.tar.gz"
      sha256 "ec49f0d06e98004e9a95026ec36692e9ef47e1df3a3d70773ef4ac9c7549c4c5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/suiflex/SafeHell/releases/download/v0.5.0/safehell-linux-aarch64.tar.gz"
      sha256 "4a14b01aa0bd3c348fb8f7cf094c35ee83a0fd67e3d4c3c0673bef89917e5432"
    end
    on_intel do
      url "https://github.com/suiflex/SafeHell/releases/download/v0.5.0/safehell-linux-x86_64.tar.gz"
      sha256 "9fecd819a292aeb7a68926465de229c49336bc33bcaa14ef1ef32bc4b5f3c8a0"
    end
  end

  def install
    bin.install "safehell"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/safehell --version")
  end
end
