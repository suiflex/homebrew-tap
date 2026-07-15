# Rendered by .github/workflows/release-build.yml into suiflex/homebrew-tap.
# Placeholders (0.15.0, https://github.com/suiflex/rdb/releases/download/v0.15.0, 473bd831b5c63fe13503476b37ab3f13db0ec39527a1e436ade8dbd5942a2481, c890c65c3505247d3b91ee40a975166aa6a9c9af97abc2faabfe4f395b6c19b8, 93174dc2824a71f9c97050f90f123da5201e436dc6e78ea63d584394253138e8) are
# filled in via sed on each release. Edit the template, not the generated file.
class Rdbs < Formula
  desc "Native cross-platform database manager (PostgreSQL, MySQL, Redis, MongoDB)"
  homepage "https://github.com/suiflex/rdb"
  version "0.15.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/suiflex/rdb/releases/download/v0.15.0/rdbs-aarch64-apple-darwin.tar.gz"
      sha256 "473bd831b5c63fe13503476b37ab3f13db0ec39527a1e436ade8dbd5942a2481"
    end
    on_intel do
      url "https://github.com/suiflex/rdb/releases/download/v0.15.0/rdbs-x86_64-apple-darwin.tar.gz"
      sha256 "c890c65c3505247d3b91ee40a975166aa6a9c9af97abc2faabfe4f395b6c19b8"
    end
  end

  on_linux do
    url "https://github.com/suiflex/rdb/releases/download/v0.15.0/rdbs-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "93174dc2824a71f9c97050f90f123da5201e436dc6e78ea63d584394253138e8"
  end

  def install
    bin.install "rdbs"
  end

  test do
    assert_match "rdbs", shell_output("#{bin}/rdbs --version")
  end
end
