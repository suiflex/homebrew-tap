# Rendered by .github/workflows/release.yml into suiflex/homebrew-tap.
# Placeholders (0.3.0, https://github.com/suiflex/websift/releases/download/v0.3.0, 1f41873d13e422b881f729425050a6d23a42a2db58da6cc6bd7fa3db4ce98306, be746a3ff9c3ff000262697513985729ee4b71e1c35fab02ec3e1040ff16f041, 6c9dba8a0eab484d59aaf7743355c71172dede68547f7acf80575352602453a9,
# 214fec2244b60ac7f6446d9f19645492c11b3d82f8ccf31bad6cd9c6d1bb0b5e) are filled in via sed on each release. Edit the template, not
# the generated file.
class Websift < Formula
  desc "Bounded web search, research, mapping, scraping, and crawling over MCP"
  homepage "https://github.com/suiflex/websift"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/suiflex/websift/releases/download/v0.3.0/websift-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "1f41873d13e422b881f729425050a6d23a42a2db58da6cc6bd7fa3db4ce98306"
    end
    on_intel do
      url "https://github.com/suiflex/websift/releases/download/v0.3.0/websift-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "be746a3ff9c3ff000262697513985729ee4b71e1c35fab02ec3e1040ff16f041"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/suiflex/websift/releases/download/v0.3.0/websift-v0.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6c9dba8a0eab484d59aaf7743355c71172dede68547f7acf80575352602453a9"
    end
    on_intel do
      url "https://github.com/suiflex/websift/releases/download/v0.3.0/websift-v0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "214fec2244b60ac7f6446d9f19645492c11b3d82f8ccf31bad6cd9c6d1bb0b5e"
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
