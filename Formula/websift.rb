# Rendered by .github/workflows/release.yml into suiflex/homebrew-tap.
# Placeholders (0.4.1, https://github.com/suiflex/websift/releases/download/v0.4.1, efc2751bbc1dc345f851d3166c6350fe02423799e4d71e58052489bfb0ed3bb9, 91e8a4501c17909e4f3fb6d60c88444aaca4fb2d81a7415a20200cb13ff94de8, 5b93a380db7a9a48ae634320e707728586763972f9ee00c489401164b500826a,
# 374dbf14e940e00f1d72ee97976e4e8a1d4cb309b20846b8156084f472b7259d) are filled in via sed on each release. Edit the template, not
# the generated file.
class Websift < Formula
  desc "Bounded web search, research, mapping, scraping, and crawling over MCP"
  homepage "https://github.com/suiflex/websift"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/suiflex/websift/releases/download/v0.4.1/websift-v0.4.1-aarch64-apple-darwin.tar.gz"
      sha256 "efc2751bbc1dc345f851d3166c6350fe02423799e4d71e58052489bfb0ed3bb9"
    end
    on_intel do
      url "https://github.com/suiflex/websift/releases/download/v0.4.1/websift-v0.4.1-x86_64-apple-darwin.tar.gz"
      sha256 "91e8a4501c17909e4f3fb6d60c88444aaca4fb2d81a7415a20200cb13ff94de8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/suiflex/websift/releases/download/v0.4.1/websift-v0.4.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5b93a380db7a9a48ae634320e707728586763972f9ee00c489401164b500826a"
    end
    on_intel do
      url "https://github.com/suiflex/websift/releases/download/v0.4.1/websift-v0.4.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "374dbf14e940e00f1d72ee97976e4e8a1d4cb309b20846b8156084f472b7259d"
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
