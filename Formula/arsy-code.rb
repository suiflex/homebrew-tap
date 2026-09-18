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
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/suiflex/arsy-code/releases/download/v0.2.0/arsy-macos-aarch64.tar.gz"
      sha256 "58f58ed6bc090b6f3750ba277d62ad787c626713d4b07c4cdd394a4415f49608"
    end
    on_intel do
      url "https://github.com/suiflex/arsy-code/releases/download/v0.2.0/arsy-macos-x86_64.tar.gz"
      sha256 "a75cfbe8f89a66fee56daa3f0b99ac0f3f2a3ebe1b2e6be8062810bfbcdf54dc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/suiflex/arsy-code/releases/download/v0.2.0/arsy-linux-aarch64.tar.gz"
      sha256 "e63193f601468db0f54abdd855236d8467bad5ed7cc9170145805e0ae60cc04f"
    end
    on_intel do
      url "https://github.com/suiflex/arsy-code/releases/download/v0.2.0/arsy-linux-x86_64.tar.gz"
      sha256 "70f08e0aabb0ea99b71cd32b86d132b3c7687fb49053edb1af4196f22a8470ce"
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
