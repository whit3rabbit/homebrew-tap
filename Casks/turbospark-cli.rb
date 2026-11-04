cask "turbospark-cli" do
  version "0.7.1"
  sha256 "c26ef685ff386b29a62afb1fba8d94835e60af1e23469d6d1e472768bacfe140"

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
  binary "turbospark-steer"
  binary "turbospark-ocr"
end
