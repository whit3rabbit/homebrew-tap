cask "turbospark-cli" do
  version "0.10.1"
  sha256 "5ce022a67b434402ee3632c5ff6d74e9f052e520cb58e9460fda217b3a3ec13b"

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
