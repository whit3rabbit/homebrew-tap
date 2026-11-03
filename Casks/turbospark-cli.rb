cask "turbospark-cli" do
  version "0.7.0"
  sha256 "e7de4749fbe99073f9a17c54dfd112b2c0ae4cef32c1f520cd27f8b22256a6f1"

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
