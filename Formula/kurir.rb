class Kurir < Formula
  desc "Portable MCP server registration and harness integration toolkit"
  homepage "https://github.com/suiflex/kurir"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/suiflex/kurir/releases/download/v#{version}/kurir-#{version}-darwin-aarch64.tar.gz"
      sha256 "52bc9f01ffad33bcea711d3d2feb34d0bebbcc37147d479057afd2136659ac18"
    else
      url "https://github.com/suiflex/kurir/releases/download/v#{version}/kurir-#{version}-darwin-x86_64.tar.gz"
      sha256 "e1eb18146ab6b2d84c01d60c09ccf1a0f211b6d87b07935007f44a8eb5306188"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/suiflex/kurir/releases/download/v#{version}/kurir-#{version}-linux-aarch64.tar.gz"
      sha256 "4f92887cd2900ca24d8b36f88c9a0e066eca64ef46d3c91740832e72dfec0557"
    else
      url "https://github.com/suiflex/kurir/releases/download/v#{version}/kurir-#{version}-linux-x86_64.tar.gz"
      sha256 "adc8c5dc8401e49132c3f288af96824d07aac298ba090bb94ac3f6dd9d7b5415"
    end
  end

  def install
    bin.install "kurir"
  end

  test do
    assert_match "kurir", shell_output("#{bin}/kurir --version")
  end
end
