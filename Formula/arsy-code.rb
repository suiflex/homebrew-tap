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
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/suiflex/arsy-code/releases/download/v0.6.0/arsy-macos-aarch64.tar.gz"
      sha256 "e09e8ce5d5651c6588935f6d33f50280faaae028de2d681d920b3a3cfd9fde39"
    end
    on_intel do
      url "https://github.com/suiflex/arsy-code/releases/download/v0.6.0/arsy-macos-x86_64.tar.gz"
      sha256 "046d48819e925e2f9051de4a40ce342e090e542c5dc4872b8e9a278c8fb17579"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/suiflex/arsy-code/releases/download/v0.6.0/arsy-linux-aarch64.tar.gz"
      sha256 "5922db65dcfeff5f6f7bcbbaf857a6ecac1512acfff78e28c93983c8e79867fa"
    end
    on_intel do
      url "https://github.com/suiflex/arsy-code/releases/download/v0.6.0/arsy-linux-x86_64.tar.gz"
      sha256 "276e9391e378ef0ff97c8896d89296a91296283566c0cf6176c89cdc07f01f73"
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
