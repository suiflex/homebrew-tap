# Rendered by .github/workflows/release-build.yml into suiflex/homebrew-tap.
# Placeholders (0.40.0, https://github.com/suiflex/rdb/releases/download/v0.40.0, 6f745b4848d509d59051d436d58f43ec44389a5980a9cd37913d6401cf1be575) are filled in via sed on each
# release. Edit the template, not the generated file.
#
# Linux only. RDB is a GUI app, so macOS installs go through the `rdb` cask
# (rdb-cask.rb.tmpl), which drops RDB.app into /Applications. Homebrew resolves
# a bare `brew install rdb` to the formula, so keeping a macOS formula here
# meant Mac users got the GUI binary dumped on $PATH instead of the app.
class Rdb < Formula
  desc "Native cross-platform database manager (PostgreSQL, MySQL, Redis, MongoDB)"
  homepage "https://github.com/suiflex/rdb"
  version "0.40.0"
  license "Apache-2.0"

  depends_on :linux

  url "https://github.com/suiflex/rdb/releases/download/v0.40.0/rdb-x86_64-unknown-linux-gnu.tar.gz"
  sha256 "6f745b4848d509d59051d436d58f43ec44389a5980a9cd37913d6401cf1be575"

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
