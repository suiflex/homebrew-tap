class Kurir < Formula
  desc "Portable MCP server registration and harness integration toolkit"
  homepage "https://github.com/suiflex/kurir"
  version "0.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/suiflex/kurir/releases/download/v#{version}/kurir-#{version}-darwin-aarch64.tar.gz"
      sha256 "3d36d587e537447dceabd3811e0302393c8f2b6a460121e6e57ecbb12ff9658e"
    else
      url "https://github.com/suiflex/kurir/releases/download/v#{version}/kurir-#{version}-darwin-x86_64.tar.gz"
      sha256 "686fae602e2f336828fc3ee16414d8d95a82ac1804d9800dc5442bb74196013b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/suiflex/kurir/releases/download/v#{version}/kurir-#{version}-linux-aarch64.tar.gz"
      sha256 "42206ca88324040cb15c701364c7cf82552f0d328edbee20ea271ee3b78ed9e4"
    else
      url "https://github.com/suiflex/kurir/releases/download/v#{version}/kurir-#{version}-linux-x86_64.tar.gz"
      sha256 "79447d07fc42f8ec9bcd9e548ba6535ab526a1b4bf74979994a9283b4f90cb45"
    end
  end

  def install
    bin.install "kurir"
  end

  test do
    assert_match "kurir", shell_output("#{bin}/kurir --version")
  end
end
