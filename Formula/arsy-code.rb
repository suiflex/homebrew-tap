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
  version "0.13.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/suiflex/arsy-code/releases/download/v0.13.1/arsy-macos-aarch64.tar.gz"
      sha256 "9b862a0986b184ad6212e7a7019e618bed201f7d60ece948d388bde8fdbe7e7b"
    end
    on_intel do
      url "https://github.com/suiflex/arsy-code/releases/download/v0.13.1/arsy-macos-x86_64.tar.gz"
      sha256 "8ad85143d9b6697b4083155108b95957c1945f0de00dfeade52ee625681f8580"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/suiflex/arsy-code/releases/download/v0.13.1/arsy-linux-aarch64.tar.gz"
      sha256 "40af464bff152f4a81c469ec71bfa9995df1e7c8b0d14e359bfe5400e6bcbc24"
    end
    on_intel do
      url "https://github.com/suiflex/arsy-code/releases/download/v0.13.1/arsy-linux-x86_64.tar.gz"
      sha256 "d4e62a3e584aaa1858d03efd9b3d9c1cfc860faca3bfe9db69283d27f513cd56"
    end
  end

  def install
    bin.install "arsy"
    # Both bundled helpers must land beside arsy.
    bin.install "fluxguard"
    bin.install "arsy-sandbox-worker"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/arsy --version")
    assert_predicate bin/"fluxguard", :exist?
    assert_predicate bin/"arsy-sandbox-worker", :exist?
  end
end
