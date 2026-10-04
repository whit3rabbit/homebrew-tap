# Homebrew FORMULA template (CLI & daemon). Source of truth; the release workflow
# renders the @@...@@ tokens from release assets and pushes to whit3rabbit/homebrew-tap.
# Install: brew install whit3rabbit/tap/openkind
require "json"

class Openkind < Formula
  desc "Independent Rust decision-inference engine that speaks the Jev protocol"
  homepage "https://github.com/whit3rabbit/openkind"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/whit3rabbit/openkind/releases/download/v#{version}/openkind-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "7c47610e3eb47d0d285dee5237681c49e606158de7703b120130c1d6d074c828"
    end
    on_intel do
      url "https://github.com/whit3rabbit/openkind/releases/download/v#{version}/openkind-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "7a122f082007a964095e206d914d0e24cd9de4a7c170172865cd4d9861f6d887"
    end
  end

  on_linux do
    url "https://github.com/whit3rabbit/openkind/releases/download/v#{version}/openkind-#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "eaca90f82f1d28cec653391f5d2970c56c02a2e73a9a4a0b732725ab78ba547f"
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
