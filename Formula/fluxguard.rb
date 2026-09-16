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
  version "0.2.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/suiflex/FluxGuard/releases/download/v0.2.1/fluxguard-macos-aarch64.tar.gz"
      sha256 "b88abf711fc355e9ba2b01431f2016f4632e5de8c6b8ade17a4fd287e68ba279"
    end
    on_intel do
      url "https://github.com/suiflex/FluxGuard/releases/download/v0.2.1/fluxguard-macos-x86_64.tar.gz"
      sha256 "9557d2683a2898e7e500721331251b3836ae35d8d20391975dc41e8b39cd918c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/suiflex/FluxGuard/releases/download/v0.2.1/fluxguard-linux-aarch64.tar.gz"
      sha256 "e581c9cfec6c686b7268841d4d30dd29ec6e3a5f202c7c064a6878f2fc4ce9a7"
    end
    on_intel do
      url "https://github.com/suiflex/FluxGuard/releases/download/v0.2.1/fluxguard-linux-x86_64.tar.gz"
      sha256 "4b64e6670109feb3c06d7c7be379ad7a49be1f91999e01ed095845286e6b2985"
    end
  end

  def install
    bin.install "fluxguard"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fluxguard --version")
  end
end
