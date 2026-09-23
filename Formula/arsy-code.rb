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
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/suiflex/arsy-code/releases/download/v0.4.0/arsy-macos-aarch64.tar.gz"
      sha256 "81e6128b490e38b86d46210f67c8b546a76b6be7824b0ce80bfd6679c65d3937"
    end
    on_intel do
      url "https://github.com/suiflex/arsy-code/releases/download/v0.4.0/arsy-macos-x86_64.tar.gz"
      sha256 "4f5b9af187d8b4e9857649bb52883696420e39cc9422c616fb92a44c713c9680"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/suiflex/arsy-code/releases/download/v0.4.0/arsy-linux-aarch64.tar.gz"
      sha256 "777d0af086350c46698c3ca48ca293346cc76ebbdcc0340d371ef621e1feb9a8"
    end
    on_intel do
      url "https://github.com/suiflex/arsy-code/releases/download/v0.4.0/arsy-linux-x86_64.tar.gz"
      sha256 "903d732e9231381a182e52e3054b85e5a3a3e7f2598a9fe61c49447f97d4d5eb"
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
