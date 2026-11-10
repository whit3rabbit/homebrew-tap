# Homebrew FORMULA template (CLI & daemon). Source of truth; the release workflow
# renders the @@...@@ tokens from release assets and pushes to whit3rabbit/homebrew-tap.
# Install: brew install whit3rabbit/tap/openkind
require "json"

class Openkind < Formula
  desc "Independent Rust decision-inference engine that speaks the Jev protocol"
  homepage "https://github.com/whit3rabbit/openkind"
  version "0.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/whit3rabbit/openkind/releases/download/v#{version}/openkind-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "ea368c195723960c9a081362ca956cfffc3270995c8b467bb3004afaa3d65f78"
    end
    on_intel do
      url "https://github.com/whit3rabbit/openkind/releases/download/v#{version}/openkind-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "ae76973c5be43b213c4eaa8553b241291d75d5ff67f3749ec6f56bccd6cd2404"
    end
  end

  on_linux do
    url "https://github.com/whit3rabbit/openkind/releases/download/v#{version}/openkind-#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "db44fb7565fc00ee9a29cc89a794634b25a4b3b9c8c15db04dc3732150fd3fbe"
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
