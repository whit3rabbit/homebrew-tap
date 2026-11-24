cask "turbospark-cli" do
  version "0.10.0"
  sha256 "3f60d01cec797f1ac1cc2fe8866c3bf897651ec219daeaedfb4c7fe626a81dc0"

  url "https://github.com/whit3rabbit/turbospark/releases/download/v#{version}/turbospark-#{version}-macos-arm64.zip"
  name "turbospark command-line tools"
  desc "Apple Silicon MoE inference engine (command-line tools only, no desktop app)"
  homepage "https://github.com/whit3rabbit/turbospark"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  conflicts_with cask: "whit3rabbit/tap/turbospark"

  binary "turbospark"
  binary "turbospark-check"
  binary "turbospark-model"
  binary "turbospark-server"
  binary "turbospark-image"
  binary "turbospark-music"
  binary "turbospark-clone"
  binary "turbospark-speak"
  binary "turbospark-enhance"
  binary "turbospark-steer"
  binary "turbospark-ocr"
  binary "turbospark-acp-agent"
end
