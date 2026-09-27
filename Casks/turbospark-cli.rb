cask "turbospark-cli" do
  version "0.2.0"
  sha256 "6ccbf09d1c3d7d9679d1a9d5af3dd4e0c79594aede256f7645fffc04114c40cc"

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
