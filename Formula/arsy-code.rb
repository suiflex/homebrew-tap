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
      sha256 "0041bd13cee28b8faae13d76d336ed69c52d10641c46b61c91b0b82ff6745fe9"
    end
    on_intel do
      url "https://github.com/suiflex/arsy-code/releases/download/v0.1.2/arsy-macos-x86_64.tar.gz"
      sha256 "6424d0326203f19c60e97e4ebd32683957df5c316231acc0ed4000a791feb557"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/suiflex/arsy-code/releases/download/v0.1.2/arsy-linux-aarch64.tar.gz"
      sha256 "61653e225d38d5bba2747688a9a82f2289777bf880c0f5239f3e48d795921e8f"
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
