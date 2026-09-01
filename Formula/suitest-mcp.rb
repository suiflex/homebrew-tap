# Rendered by .github/workflows/release-mcp.yml into suiflex/homebrew-tap.
# Placeholders (0.8.1, https://github.com/suiflex/suitest/releases/download/mcp-v0.8.1, f126d418304206ff3d0969a1ae9ce7165468a5f2fa2f4846762915406c2962d0) are filled in via sed on each release.
# Edit the template, not the generated file.
class SuitestMcp < Formula
  desc "Suitest MCP server for IDE agents - generate, run, and publish QA tests"
  homepage "https://github.com/suiflex/suitest"
  url "https://github.com/suiflex/suitest/releases/download/mcp-v0.8.1/suitest-mcp-0.8.1.tar.gz"
  sha256 "f126d418304206ff3d0969a1ae9ce7165468a5f2fa2f4846762915406c2962d0"
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
