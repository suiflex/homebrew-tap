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
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/suiflex/arsy-code/releases/download/v0.1.2/arsy-macos-aarch64.tar.gz"
      sha256 "46f0042c2b167350270513476bcd3a826697aa050f806ef80fd242f5d89a9e38"
    end
    on_intel do
      url "https://github.com/suiflex/arsy-code/releases/download/v0.1.2/arsy-macos-x86_64.tar.gz"
      sha256 "9711fdfeb2d05bbd0befe0cf22f5cb627e88782e50c24d705192fecebb589b1c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/suiflex/arsy-code/releases/download/v0.1.2/arsy-linux-aarch64.tar.gz"
      sha256 "a57e1e2872d12689c842f4ba6b926f3bfc0f86739263d120d41d56834ae25356"
    end
    on_intel do
      url "https://github.com/suiflex/arsy-code/releases/download/v0.1.2/arsy-linux-x86_64.tar.gz"
      sha256 "c9837299ae8c9a31c43c6803c333742e23ada8172955da5dfdb04e594f2875ab"
    end
  end

  def install
    bin.install "arsy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/arsy --version")
  end
end
