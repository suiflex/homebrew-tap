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
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/suiflex/arsy-code/releases/download/v0.3.0/arsy-macos-aarch64.tar.gz"
      sha256 "f946c3341852fc08b036de0224e5baa0f9f5caeecddb8483c70867b4cfbd60cf"
    end
    on_intel do
      url "https://github.com/suiflex/arsy-code/releases/download/v0.3.0/arsy-macos-x86_64.tar.gz"
      sha256 "ad235a5fd54f86b412d8fb69c8ea30a6b54bf05ae27cf16730a2889d4008f763"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/suiflex/arsy-code/releases/download/v0.3.0/arsy-linux-aarch64.tar.gz"
      sha256 "65764b8b48945e01a33942ea3834c698bc19810f8151d1cfa11705f90c62b7c6"
    end
    on_intel do
      url "https://github.com/suiflex/arsy-code/releases/download/v0.3.0/arsy-linux-x86_64.tar.gz"
      sha256 "a4fe350ac91f25ad748fdf3dc2e8ea8499dc391f36ffa8cba2e158d3c62edd92"
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
