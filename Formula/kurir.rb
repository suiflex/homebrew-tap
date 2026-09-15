class Kurir < Formula
  desc "Portable MCP server registration and harness integration toolkit"
  homepage "https://github.com/suiflex/kurir"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/suiflex/kurir/releases/download/v#{version}/kurir-#{version}-darwin-aarch64.tar.gz"
      sha256 "9ca9fa6badcf910fb7680f30795762e6aca7befc39f2e619bc8f0b94caf7150f"
    else
      url "https://github.com/suiflex/kurir/releases/download/v#{version}/kurir-#{version}-darwin-x86_64.tar.gz"
      sha256 "c9833131e245fd8909bddb5c8761e775fe999adceee24ed25ae9768989ce068d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/suiflex/kurir/releases/download/v#{version}/kurir-#{version}-linux-aarch64.tar.gz"
      sha256 "2afeab9a695fc282800546cf7ff1e5a53c468a06aa359decffe9d5c518a4a5da"
    else
      url "https://github.com/suiflex/kurir/releases/download/v#{version}/kurir-#{version}-linux-x86_64.tar.gz"
      sha256 "bdbac8a3b7e81dc2cc0e9c33f79ca89d68c48c012f118cab9131662f2ff50f25"
    end
  end

  def install
    bin.install "kurir"
  end

  test do
    assert_match "kurir", shell_output("#{bin}/kurir --version")
  end
end
