# Template for suiflex/homebrew-tap Formula/arsy-code.rb.
#
# .github/workflows/release.yml renders this with sed on every tagged release, filling the
# placeholders below from that run's build artifacts. Edit this template, never the
# generated file in the tap: the next release overwrites it.
#
# The class name follows the file name, so Formula/arsy-code.rb must declare ArsyCode.
class ArsyCode < Formula
  desc "Local, auditable, model-independent software-engineering agent harness"
  homepage "https://github.com/suiflex/arsy-code"
  version "0.11.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/suiflex/arsy-code/releases/download/v0.11.0/arsy-macos-aarch64.tar.gz"
      sha256 "d6bdece004e5245c7957109de1d25393ff27a7c4348a5ba0cc0b21aa5aa5d1ef"
    end
    on_intel do
      url "https://github.com/suiflex/arsy-code/releases/download/v0.11.0/arsy-macos-x86_64.tar.gz"
      sha256 "b2a2135fd7629aa09535128206a7ba4e57083146beb0dda73499d540e4cf7870"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/suiflex/arsy-code/releases/download/v0.11.0/arsy-linux-aarch64.tar.gz"
      sha256 "a5c82430a3aa245825c8631812426940d8b30d0716560c7b985bd6ac6d3f74f9"
    end
    on_intel do
      url "https://github.com/suiflex/arsy-code/releases/download/v0.11.0/arsy-linux-x86_64.tar.gz"
      sha256 "d2879eebbe23fa1b92b328a53d39d96ad9e136565ed863796806e37a87a5fc01"
    end
  end

  def install
    bin.install "arsy"
    # Installed together so FluxGuard lands beside arsy, where ARSY looks for
    # it when it declares the bundled MCP server.
    bin.install "fluxguard"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/arsy --version")
    assert_predicate bin/"fluxguard", :exist?
  end
end
