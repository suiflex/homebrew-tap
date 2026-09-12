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
  version "0.2.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/suiflex/FluxGuard/releases/download/v0.2.0/fluxguard-macos-aarch64.tar.gz"
      sha256 "60922a762ed199156682d0e926dcf6b8094bb16b9e222c10d752b1e32bedea5f"
    end
    on_intel do
      url "https://github.com/suiflex/FluxGuard/releases/download/v0.2.0/fluxguard-macos-x86_64.tar.gz"
      sha256 "67fff4b08196059356d4a4340e7a39dc024aecbc8b44ac9174a836fe3c7cf2b2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/suiflex/FluxGuard/releases/download/v0.2.0/fluxguard-linux-aarch64.tar.gz"
      sha256 "44be5ffb7cea090aa25fdf4c3220db832ee1abe781949602d01266afbc86c1a9"
    end
    on_intel do
      url "https://github.com/suiflex/FluxGuard/releases/download/v0.2.0/fluxguard-linux-x86_64.tar.gz"
      sha256 "dcc18cff43efb67e717d702bf231f32cfa660646e8a566129a18267d6a386f2b"
    end
  end

  def install
    bin.install "fluxguard"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fluxguard --version")
  end
end
