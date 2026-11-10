cask "turbospark-cli" do
  version "0.8.0"
  sha256 "2f71f08d2c1c275e367ef429f3e075ba5208ecc6230c4128c3a9749224356672"

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
