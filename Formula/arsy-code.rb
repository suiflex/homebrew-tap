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
  version "0.10.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/suiflex/arsy-code/releases/download/v0.10.0/arsy-macos-aarch64.tar.gz"
      sha256 "ad430a83008b76d95ccfb8c2d13abc6dafe1b677fe85235ad8ec7d0494b60b03"
    end
    on_intel do
      url "https://github.com/suiflex/arsy-code/releases/download/v0.10.0/arsy-macos-x86_64.tar.gz"
      sha256 "16ba175f78a7f3826e7fe5c29530ed7ba91c1e7ca040e26323449bb102a53117"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/suiflex/arsy-code/releases/download/v0.10.0/arsy-linux-aarch64.tar.gz"
      sha256 "34ea35755d6d3b3e124f6f142820ebbaad6eb8e05e35a705a4c91d89e66cc9a7"
    end
    on_intel do
      url "https://github.com/suiflex/arsy-code/releases/download/v0.10.0/arsy-linux-x86_64.tar.gz"
      sha256 "70b4ce3017b4b8f4ee9a5f51e103fcadb3a574f2ee782c389a1d2618bda04f76"
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
