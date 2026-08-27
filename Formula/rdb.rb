# Rendered by .github/workflows/release-build.yml into suiflex/homebrew-tap.
# Placeholders (0.43.0, https://github.com/suiflex/rdb/releases/download/v0.43.0, aea98acb2b7eed1e2111a63f84f63ba5d07d6d3592321700d2fd5e666cf83e73) are filled in via sed on each
# release. Edit the template, not the generated file.
#
# The arm64 stanza carries its own placeholder and a trailing marker comment.
# That leg of the build is best-effort (continue-on-error), so the asset may be
# absent: the workflow strips the marker when it exists and deletes those lines
# outright when it does not. The arm64 placeholder is deliberately not spelled
# out above, because the delete path leaves no sed rule to substitute it and a
# leftover placeholder in this comment would (rightly) fail the render check.
#
# Linux only. RDB is a GUI app, so macOS installs go through the `rdb` cask
# (rdb-cask.rb.tmpl), which drops RDB.app into /Applications. Homebrew resolves
# a bare `brew install rdb` to the formula, so keeping a macOS formula here
# meant Mac users got the GUI binary dumped on $PATH instead of the app.
class Rdb < Formula
  desc "Native cross-platform database manager (PostgreSQL, MySQL, Redis, MongoDB)"
  homepage "https://github.com/suiflex/rdb"
  version "0.43.0"
  license "Apache-2.0"

  depends_on :linux

  # x86_64 stays the unconditional default and arm64 overrides it, rather than
  # both living in arch blocks. If the best-effort arm64 leg produced nothing,
  # the override lines are deleted and this formula falls back to exactly the
  # x86_64-only shape it had before — whereas an arch-block pair with the arm64
  # half missing leaves an arm machine with no url at all, which Homebrew
  # rejects at *load* time ("formula requires at least a URL"), breaking more
  # than just the install.
  url "https://github.com/suiflex/rdb/releases/download/v0.43.0/rdb-x86_64-unknown-linux-gnu.tar.gz"
  sha256 "aea98acb2b7eed1e2111a63f84f63ba5d07d6d3592321700d2fd5e666cf83e73"

  # Without this override every Linux user got the x86_64 tarball, so an arm64
  # machine silently installed a binary it cannot run.
  on_arm do
    url "https://github.com/suiflex/rdb/releases/download/v0.43.0/rdb-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "e8a487291d31cd11f64f1225950450cb3edab76aba93e7c78fecace90834da9e"
  end

  def install
    bin.install "rdb"
  end

  # No `test do` block: rdb parses no arguments at all, so `rdb --version`
  # opens a window rather than printing anything. A launch-the-GUI test would
  # just hang on a headless machine.
  test do
    assert_predicate bin/"rdb", :executable?
  end
end
