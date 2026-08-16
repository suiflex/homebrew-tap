# Rendered by .github/workflows/release.yml into suiflex/homebrew-tap.
# Placeholders (0.4.0, https://github.com/suiflex/websift/releases/download/v0.4.0, be034173df06790148bdc04e3b7815db65549f8661aedec1899a9095d66741b4, c8e41e2af25b678f2ef09c7c8cd1440609affe3b7df178e8ec81cf3ebf4f699f, cf710651c29d0b956a029fdfb03edf278bae9892a866994b0ec9323d24eeccb2,
# 18d111ebf428e8302d678c0432a1096659cb2797411582f93c0a0b703aa7f69e) are filled in via sed on each release. Edit the template, not
# the generated file.
class Websift < Formula
  desc "Bounded web search, research, mapping, scraping, and crawling over MCP"
  homepage "https://github.com/suiflex/websift"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/suiflex/websift/releases/download/v0.4.0/websift-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "be034173df06790148bdc04e3b7815db65549f8661aedec1899a9095d66741b4"
    end
    on_intel do
      url "https://github.com/suiflex/websift/releases/download/v0.4.0/websift-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "c8e41e2af25b678f2ef09c7c8cd1440609affe3b7df178e8ec81cf3ebf4f699f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/suiflex/websift/releases/download/v0.4.0/websift-v0.4.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cf710651c29d0b956a029fdfb03edf278bae9892a866994b0ec9323d24eeccb2"
    end
    on_intel do
      url "https://github.com/suiflex/websift/releases/download/v0.4.0/websift-v0.4.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "18d111ebf428e8302d678c0432a1096659cb2797411582f93c0a0b703aa7f69e"
    end
  end

  def install
    bin.install "websift"
  end

  test do
    # There is no --version flag: the CLI accepts mcp, status, setup, doctor, and update only.
    # `status` prints its report as JSON and creates nothing on disk.
    assert_match "\"command\":\"status\"", shell_output("#{bin}/websift status")
  end
end
