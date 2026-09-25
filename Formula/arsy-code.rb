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
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/suiflex/arsy-code/releases/download/v0.5.0/arsy-macos-aarch64.tar.gz"
      sha256 "9d0a9ee3bb87b08b1d750232fd59f83db15339aa80a5e9d879834561dd977e92"
    end
    on_intel do
      url "https://github.com/suiflex/arsy-code/releases/download/v0.5.0/arsy-macos-x86_64.tar.gz"
      sha256 "3e0d9e5eaf3a78f7453a6f1253930a62dbd96a2da22217b5b1c8ca36b9a40e3b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/suiflex/arsy-code/releases/download/v0.5.0/arsy-linux-aarch64.tar.gz"
      sha256 "f711ff1117dd1ca4659b52784eb4476772cfd9a7b8a8bc315fe8b20cfc324134"
    end
    on_intel do
      url "https://github.com/suiflex/arsy-code/releases/download/v0.5.0/arsy-linux-x86_64.tar.gz"
      sha256 "d17d306b3332c6f9b6a10ebf62301f9a6594511f3e33b9b15438157866234f4e"
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
