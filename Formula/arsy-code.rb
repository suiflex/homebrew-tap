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
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/suiflex/arsy-code/releases/download/v0.7.0/arsy-macos-aarch64.tar.gz"
      sha256 "124ec96f655bffb6931973287a66b867cc40b4d33499ea937fc17867de76b612"
    end
    on_intel do
      url "https://github.com/suiflex/arsy-code/releases/download/v0.7.0/arsy-macos-x86_64.tar.gz"
      sha256 "7c7606946a7150b949aaa363fdd6fe20f8aa127a37de7f42110e2c512bcbef3b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/suiflex/arsy-code/releases/download/v0.7.0/arsy-linux-aarch64.tar.gz"
      sha256 "aa86375ff8d21cb8da02cc37063e9ca81cfdcbc06feaace63fac2a384838b545"
    end
    on_intel do
      url "https://github.com/suiflex/arsy-code/releases/download/v0.7.0/arsy-linux-x86_64.tar.gz"
      sha256 "c75b6fa847e7b5d7d0f7b951e3e295c53c66594d69a20394c00f95c63ecc923a"
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
