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
  version "0.12.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/suiflex/arsy-code/releases/download/v0.12.0/arsy-macos-aarch64.tar.gz"
      sha256 "ef66005e480cd320587455d4cc7ad2b301c44c7546ec45c3f800d9883d7f1109"
    end
    on_intel do
      url "https://github.com/suiflex/arsy-code/releases/download/v0.12.0/arsy-macos-x86_64.tar.gz"
      sha256 "a1e3692bad6841a5437110f9cbf7e0ad25acd77a942e102fc315fb9e942fd63c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/suiflex/arsy-code/releases/download/v0.12.0/arsy-linux-aarch64.tar.gz"
      sha256 "a385639c560e65a0b453b4e4662ceebe3369c390aac5629f7cf9d126dc888c03"
    end
    on_intel do
      url "https://github.com/suiflex/arsy-code/releases/download/v0.12.0/arsy-linux-x86_64.tar.gz"
      sha256 "21b86e3e8fdcd701e2d7ac557590cd756523669800a488185cdf7394a9164167"
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
