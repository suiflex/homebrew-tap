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
  version "0.7.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/suiflex/arsy-code/releases/download/v0.7.1/arsy-macos-aarch64.tar.gz"
      sha256 "c3d23bec606b7782fccbfda97a2c6067878186515a750ec0271bf27ae3e2f332"
    end
    on_intel do
      url "https://github.com/suiflex/arsy-code/releases/download/v0.7.1/arsy-macos-x86_64.tar.gz"
      sha256 "7dae901fa8c0f0cfb515a4d2f69709569dbc8d8b53c463e8add5efcae93d7bad"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/suiflex/arsy-code/releases/download/v0.7.1/arsy-linux-aarch64.tar.gz"
      sha256 "6f230899039b8a5c8943e56216727a1106a228ebe6cdacfe989c5469a97add77"
    end
    on_intel do
      url "https://github.com/suiflex/arsy-code/releases/download/v0.7.1/arsy-linux-x86_64.tar.gz"
      sha256 "2d307dd27e364b34aebc89e6652f63f87e47d28042bc5edd4b7863af5063031e"
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
