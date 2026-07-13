# Rendered by .github/workflows/release-build.yml into suiflex/homebrew-tap.
# Placeholders (0.12.0, https://github.com/suiflex/rdb/releases/download/v0.12.0, b07cf3f420349178290d8bff90129fcba75ea34ee7430eba168ac8c9c9be4428, 02a591cec89def0d514ee7a46950637062b753d64440347536122170681bd3e8, a879554231d5aacbbe8f67b5e86d56fb41cf91345bc1b61ec4ad23f143ba8a7f) are
# filled in via sed on each release. Edit the template, not the generated file.
class Rdbs < Formula
  desc "Native cross-platform database manager (PostgreSQL, MySQL, Redis, MongoDB)"
  homepage "https://github.com/suiflex/rdb"
  version "0.12.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/suiflex/rdb/releases/download/v0.12.0/rdbs-aarch64-apple-darwin.tar.gz"
      sha256 "b07cf3f420349178290d8bff90129fcba75ea34ee7430eba168ac8c9c9be4428"
    end
    on_intel do
      url "https://github.com/suiflex/rdb/releases/download/v0.12.0/rdbs-x86_64-apple-darwin.tar.gz"
      sha256 "02a591cec89def0d514ee7a46950637062b753d64440347536122170681bd3e8"
    end
  end

  on_linux do
    url "https://github.com/suiflex/rdb/releases/download/v0.12.0/rdbs-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "a879554231d5aacbbe8f67b5e86d56fb41cf91345bc1b61ec4ad23f143ba8a7f"
  end

  def install
    bin.install "rdbs"
  end

  test do
    assert_match "rdbs", shell_output("#{bin}/rdbs --version")
  end
end
