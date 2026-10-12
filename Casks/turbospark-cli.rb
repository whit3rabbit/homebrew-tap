cask "turbospark-cli" do
  version "0.3.0"
  sha256 "955c63da42b21e7e7bfe1d1391e5f2a651047fcd6662b241d2c178550d4c079e"

  url "https://github.com/whit3rabbit/turbospark/releases/download/v#{version}/turbospark-#{version}-macos-arm64.zip"
  name "turbospark command-line tools"
  desc "Apple Silicon MoE inference engine (command-line tools only, no desktop app)"
  homepage "https://github.com/whit3rabbit/turbospark"

  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  conflicts_with cask: "whit3rabbit/tap/turbospark"

  binary "turbospark-check"
  binary "turbospark-model"
  binary "turbospark-server"
end
