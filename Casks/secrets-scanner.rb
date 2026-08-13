cask "secrets-scanner" do
  arch arm: "arm64", intel: "x86_64"

  version "0.2.3"
  sha256 arm:   "96f1237e81150670ad6b8c8cec2a6f5974ece92d5b168466088648281497bc4b",
         intel: "0b88952a97a436f941d7a70f7e0dd2713eea98680e7486a90ee15f1a60f25b9c"

  url "https://github.com/whit3rabbit/secrets-scanner/releases/download/v#{version}/secrets-scanner-#{version}-macos-#{arch}.zip"
  name "secrets-scanner"
  desc "High-performance secrets scanner using gitleaks-compatible rules"
  homepage "https://github.com/whit3rabbit/secrets-scanner"

  binary "secrets-scanner"
end
