cask "turbospark-cli" do
  version "0.1.0"
  sha256 "d5cd09491fb85f34804a81fb2192f07c699c31ee793d206e4b6f7ba41713a8d4"

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
