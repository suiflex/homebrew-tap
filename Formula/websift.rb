# Rendered by .github/workflows/release.yml into suiflex/homebrew-tap.
# Placeholders (0.4.2, https://github.com/suiflex/websift/releases/download/v0.4.2, 7137d15a82a1726451ba61679c146de1067772db12b1ccc5b489a965605217d6, f3967eb455856b6b4dea0a464689c908d2c189558b1afcbffd7fc525d5c08d87, ddddeb22f07921ce9f99f0ab703aeb11d4e4ef7b8807506682b193598a2bb351,
# ee0cc2417474838188bbca72c508aac5c46650a65bfd29003302285e9cb2ce20) are filled in via sed on each release. Edit the template, not
# the generated file.
class Websift < Formula
  desc "Bounded web search, research, mapping, scraping, and crawling over MCP"
  homepage "https://github.com/suiflex/websift"
  version "0.4.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/suiflex/websift/releases/download/v0.4.2/websift-v0.4.2-aarch64-apple-darwin.tar.gz"
      sha256 "7137d15a82a1726451ba61679c146de1067772db12b1ccc5b489a965605217d6"
    end
    on_intel do
      url "https://github.com/suiflex/websift/releases/download/v0.4.2/websift-v0.4.2-x86_64-apple-darwin.tar.gz"
      sha256 "f3967eb455856b6b4dea0a464689c908d2c189558b1afcbffd7fc525d5c08d87"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/suiflex/websift/releases/download/v0.4.2/websift-v0.4.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ddddeb22f07921ce9f99f0ab703aeb11d4e4ef7b8807506682b193598a2bb351"
    end
    on_intel do
      url "https://github.com/suiflex/websift/releases/download/v0.4.2/websift-v0.4.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ee0cc2417474838188bbca72c508aac5c46650a65bfd29003302285e9cb2ce20"
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
