cask "turbospark-cli" do
  version "0.5.0"
  sha256 "3d96e38c11f26df3e178d5f7368f381f7d46a2d00f1ce57cee2d1ed022b42eb7"

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
