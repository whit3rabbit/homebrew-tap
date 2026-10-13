cask "turbospark-cli" do
  version "0.3.1"
  sha256 "89d90c0a125a5cd3a830902629b42ad5ac0aa8f83f54436fa8959bb6ea2abd56"

  url "https://github.com/whit3rabbit/turbospark/releases/download/v#{version}/turbospark-#{version}-macos-arm64.zip"
  name "turbospark command-line tools"
  desc "Apple Silicon MoE inference engine (command-line tools only, no desktop app)"
  homepage "https://github.com/whit3rabbit/turbospark"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  conflicts_with cask: "whit3rabbit/tap/turbospark"

  binary "turbospark-check"
  binary "turbospark-model"
  binary "turbospark-server"
end
