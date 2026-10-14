# Homebrew FORMULA template (CLI & daemon). Source of truth; the release workflow
# renders the @@...@@ tokens from release assets and pushes to whit3rabbit/homebrew-tap.
# Install: brew install whit3rabbit/tap/openkind
require "json"

class Openkind < Formula
  desc "Independent Rust decision-inference engine that speaks the Jev protocol"
  homepage "https://github.com/whit3rabbit/openkind"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/whit3rabbit/openkind/releases/download/v#{version}/openkind-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "78048955ff79e4eb2cc0a7435417a171deb08212ac3a881e0f7891e70e5b6f5b"
    end
    on_intel do
      url "https://github.com/whit3rabbit/openkind/releases/download/v#{version}/openkind-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "9ea701d0146e9de8f1730764143f3be007b906c636ea9a81b8593c7cc0b020f3"
    end
  end

  on_linux do
    url "https://github.com/whit3rabbit/openkind/releases/download/v#{version}/openkind-#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "dfa881684ea972a42ca867b026d65e72e503bdfdc7d4f15296e1765af472aa02"
  end

  def install
    bin.install "openkind"
    bin.install "openkindd"
    bin.install "mlx.metallib" if File.exist?("mlx.metallib")
  end

  test do
    system bin/"openkind", "version"
    report = JSON.parse(shell_output("#{bin}/openkind doctor --json"))
    assert_equal true, report.fetch("backends").find { |b| b.fetch("backend") == "native-cpu" }.fetch("ready")
  end
end
