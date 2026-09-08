# Rendered by .github/workflows/release-mcp.yml into suiflex/homebrew-tap.
# Placeholders (0.11.0, https://github.com/suiflex/suitest/releases/download/v0.11.0, c48f2f1cbd35a54dd401d6c4657ee65e640b1535ebabf2e95dc9d6af04f3dbd9) are filled in via sed on each release.
# Edit the template, not the generated file.
class SuitestMcp < Formula
  desc "Suitest MCP server for IDE agents - generate, run, and publish QA tests"
  homepage "https://github.com/suiflex/suitest"
  url "https://github.com/suiflex/suitest/releases/download/v0.11.0/suitest-mcp-0.11.0.tar.gz"
  sha256 "c48f2f1cbd35a54dd401d6c4657ee65e640b1535ebabf2e95dc9d6af04f3dbd9"
  license "Apache-2.0"

  depends_on "node"
  # lib/python.js takes a system python3 when there is one and otherwise
  # provisions an interpreter through uv; keep uv available either way.
  depends_on "uv"

  def install
    libexec.install Dir["*"]
    # A wrapper rather than a symlink to bin/suitest-mcp.js: the shebang would
    # resolve node off the caller's PATH, which may not have one.
    (bin/"suitest-mcp").write <<~SH
      #!/bin/bash
      exec "#{Formula["node"].opt_bin}/node" "#{libexec}/bin/suitest-mcp.js" "$@"
    SH
  end

  test do
    # `mcp` needs a reachable API and credentials; --help stays hermetic.
    assert_match "suitest-mcp", shell_output("#{bin}/suitest-mcp --help")
  end
end
