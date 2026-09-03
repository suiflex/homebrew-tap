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
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/suiflex/SafeHell/releases/download/v0.3.0/safehell-macos-aarch64.tar.gz"
      sha256 "0e11656bce332532613bb3c2bfe7d63f8b0ad0db9c3c7201fdcd75a47be0ba55"
    end
    on_intel do
      url "https://github.com/suiflex/SafeHell/releases/download/v0.3.0/safehell-macos-x86_64.tar.gz"
      sha256 "c23b39bc591a087fdef28949f687f9e29b00ff128b321113caa722acb5f7d645"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/suiflex/SafeHell/releases/download/v0.3.0/safehell-linux-aarch64.tar.gz"
      sha256 "5542486c93ebd5ddd4defc90ebf00dea961af9c086b0402e9017187f4000ff6a"
    end
    on_intel do
      url "https://github.com/suiflex/SafeHell/releases/download/v0.3.0/safehell-linux-x86_64.tar.gz"
      sha256 "b6a7588713fb962d4e7063b3180f6f0bb7f81431c288dd75cb39ff040da2994c"
    end
  end

  def install
    bin.install "safehell"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/safehell --version")
  end
end
