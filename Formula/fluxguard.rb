# Template for suiflex/homebrew-tap Formula/fluxguard.rb.
#
# .github/workflows/release-build.yml renders this with sed on every tagged
# release, filling the placeholders below from that run's build artifacts. Edit
# this template, never the generated file in the tap: the next release
# overwrites it.
#
# The class name follows the file name, so Formula/fluxguard.rb must declare
# Fluxguard.
class Fluxguard < Formula
  desc "Provider-agnostic resource awareness layer for AI coding agents"
  homepage "https://github.com/suiflex/FluxGuard"
  version "0.2.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/suiflex/FluxGuard/releases/download/v0.2.2/fluxguard-macos-aarch64.tar.gz"
      sha256 "f84b6b715f418442ae52967b772c80663e48c223a59da1ef53d7190f73765e0a"
    end
    on_intel do
      url "https://github.com/suiflex/FluxGuard/releases/download/v0.2.2/fluxguard-macos-x86_64.tar.gz"
      sha256 "8b6fbe2f69e87d93642a89bdc779ff59b3ac508331c48e3bfe2be788b0031f4f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/suiflex/FluxGuard/releases/download/v0.2.2/fluxguard-linux-aarch64.tar.gz"
      sha256 "f85ba1bce6608e275d34762048238e40662777caee3f982837373082efc51f70"
    end
    on_intel do
      url "https://github.com/suiflex/FluxGuard/releases/download/v0.2.2/fluxguard-linux-x86_64.tar.gz"
      sha256 "9dec34203e0938597f780c46f1d20486512d61b27600e48cbea6e075909daacf"
    end
  end

  def install
    bin.install "fluxguard"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fluxguard --version")
  end
end
