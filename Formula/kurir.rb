class Kurir < Formula
  desc "Portable MCP server registration and harness integration toolkit"
  homepage "https://github.com/suiflex/kurir"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/suiflex/kurir/releases/download/v#{version}/kurir-#{version}-darwin-aarch64.tar.gz"
      sha256 "96e1c1c4942122b15648e16dbe404b4cca5c4134eeb0667dc67e96162dcdb582"
    else
      url "https://github.com/suiflex/kurir/releases/download/v#{version}/kurir-#{version}-darwin-x86_64.tar.gz"
      sha256 "07d29107359c63f5415f34e70eaba8f1993b80063c706bd98a293edb9bd5261c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/suiflex/kurir/releases/download/v#{version}/kurir-#{version}-linux-aarch64.tar.gz"
      sha256 "e527a803c44c57f5e929db7bb6e80b685a03f6dd77d3f306de5a718d544573af"
    else
      url "https://github.com/suiflex/kurir/releases/download/v#{version}/kurir-#{version}-linux-x86_64.tar.gz"
      sha256 "6206c0f8ae794e62a3d8a29a8c4672563c0b359dbf5a2e9091751eae5fda2df2"
    end
  end

  def install
    bin.install "kurir"
  end

  test do
    assert_match "kurir", shell_output("#{bin}/kurir --version")
  end
end
