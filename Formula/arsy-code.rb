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
  version "0.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/suiflex/arsy-code/releases/download/v0.9.0/arsy-macos-aarch64.tar.gz"
      sha256 "21331eaa6ac74edd286983f6e483335b514d7ea4b4d4000b564f72df22186249"
    end
    on_intel do
      url "https://github.com/suiflex/arsy-code/releases/download/v0.9.0/arsy-macos-x86_64.tar.gz"
      sha256 "bd408a358ff90d1b7af2419e1c38b9773c0d5ea634157c8fcdde0797f092ccd1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/suiflex/arsy-code/releases/download/v0.9.0/arsy-linux-aarch64.tar.gz"
      sha256 "846bd7099cb4189082296bf90b737ee4d34eb72ec76dfdbd16c5c3f7ac8dc9bb"
    end
    on_intel do
      url "https://github.com/suiflex/arsy-code/releases/download/v0.9.0/arsy-linux-x86_64.tar.gz"
      sha256 "5f209363f5a31d64c5b1a203ec79507a7765392575f71e44c7aeb56a31aaa1a6"
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
