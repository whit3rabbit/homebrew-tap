# Homebrew FORMULA template (CLI & daemon). Source of truth; the release workflow
# renders the @@...@@ tokens from release assets and pushes to whit3rabbit/homebrew-tap.
# Install: brew install whit3rabbit/tap/openkind
require "json"

class Openkind < Formula
  desc "Independent Rust decision-inference engine that speaks the Jev protocol"
  homepage "https://github.com/whit3rabbit/openkind"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/whit3rabbit/openkind/releases/download/v#{version}/openkind-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "63b4d4bdbe073e9732a515e0b119e5593edad59a1704cc879a0cc2624408c490"
    end
    on_intel do
      url "https://github.com/whit3rabbit/openkind/releases/download/v#{version}/openkind-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "2c039d19000d6d5d578010d50e33b8fdae34a1cba60713cfdf23d7aac905ff86"
    end
  end

  on_linux do
    url "https://github.com/whit3rabbit/openkind/releases/download/v#{version}/openkind-#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "a6e5e4bd6e80e69f5305bfdbd5e8ad64dd03c078a279ca0de22b6558099bed15"
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
