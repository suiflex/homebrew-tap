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
  version "0.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/suiflex/arsy-code/releases/download/v0.5.1/arsy-macos-aarch64.tar.gz"
      sha256 "f92ccd353a09cb70a6573d76f9a44f043a144c6d6783a2e9c5bb4685f7bd3af2"
    end
    on_intel do
      url "https://github.com/suiflex/arsy-code/releases/download/v0.5.1/arsy-macos-x86_64.tar.gz"
      sha256 "03378062c108d0f01314160354a97cb1723c95b452a337b868bbee1fdc3002c4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/suiflex/arsy-code/releases/download/v0.5.1/arsy-linux-aarch64.tar.gz"
      sha256 "890f8f660088a3dd5fa6ead3d8a4d785f4b24cba55802aa7000bac1e6ffd47aa"
    end
    on_intel do
      url "https://github.com/suiflex/arsy-code/releases/download/v0.5.1/arsy-linux-x86_64.tar.gz"
      sha256 "b728af4d62d99ef5f5b97df6135595654e9524f23470b26dd8caac97b703a970"
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
