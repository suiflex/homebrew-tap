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
  version "0.8.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/suiflex/arsy-code/releases/download/v0.8.1/arsy-macos-aarch64.tar.gz"
      sha256 "45cb365410910cc1bad3322ccb840a967145592b649ae5a0ddd2a231351f1809"
    end
    on_intel do
      url "https://github.com/suiflex/arsy-code/releases/download/v0.8.1/arsy-macos-x86_64.tar.gz"
      sha256 "0ba81cdd33c59a4bd62a1a106327d02f63f43a40ef9962968beb8afa7c3b941b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/suiflex/arsy-code/releases/download/v0.8.1/arsy-linux-aarch64.tar.gz"
      sha256 "228de1b7cccd59846bd4e1114fb8ec767af693d6edcd71cf7b8304a4bfbf858b"
    end
    on_intel do
      url "https://github.com/suiflex/arsy-code/releases/download/v0.8.1/arsy-linux-x86_64.tar.gz"
      sha256 "b52c7b91b0e70de99ae86d2ddf1670e141f13496a42ecb359b10ecacb4b6b89d"
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
