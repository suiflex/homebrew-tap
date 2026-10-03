class Kurir < Formula
  desc "Portable MCP server registration and harness integration toolkit"
  homepage "https://github.com/suiflex/kurir"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/suiflex/kurir/releases/download/v#{version}/kurir-#{version}-darwin-aarch64.tar.gz"
      sha256 "f4b0ee70f2271f02e036a60836f71a174996afd0454d065d87785df4a6d108cd"
    else
      url "https://github.com/suiflex/kurir/releases/download/v#{version}/kurir-#{version}-darwin-x86_64.tar.gz"
      sha256 "05926e2d688f1d467066210381b75c27f4990126461645248669ebb7221022b2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/suiflex/kurir/releases/download/v#{version}/kurir-#{version}-linux-aarch64.tar.gz"
      sha256 "2d6db10d33bc113a6cca801a0f719acff2ae5cb2ea7eacb922d072cb3d56636b"
    else
      url "https://github.com/suiflex/kurir/releases/download/v#{version}/kurir-#{version}-linux-x86_64.tar.gz"
      sha256 "9efd2cf96bab0b80d95b814d4d71ea901432c456a02f4d223083ffc1333d587f"
    end
  end

  def install
    bin.install "kurir"
  end

  test do
    assert_match "kurir", shell_output("#{bin}/kurir --version")
  end
end
