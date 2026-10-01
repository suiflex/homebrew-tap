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
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/suiflex/arsy-code/releases/download/v0.8.0/arsy-macos-aarch64.tar.gz"
      sha256 "2ea4b6190dc20f775bffaa2e30f70c8dbc7cd42f5f018ec57355c50ad21f7bfa"
    end
    on_intel do
      url "https://github.com/suiflex/arsy-code/releases/download/v0.8.0/arsy-macos-x86_64.tar.gz"
      sha256 "bca94d1216152fe37a1f4e0cccf18fc52d96edb7beaea7773b45656598b42526"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/suiflex/arsy-code/releases/download/v0.8.0/arsy-linux-aarch64.tar.gz"
      sha256 "12741e7f52771c6dbf8c828e9e231b56e31ca02e5ef7a69e58b70487bb451014"
    end
    on_intel do
      url "https://github.com/suiflex/arsy-code/releases/download/v0.8.0/arsy-linux-x86_64.tar.gz"
      sha256 "c420594b91462359c3c3017d3bc9649d830711373008fa15388f98c4147ee9cd"
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
