cask "secrets-scanner" do
  arch arm: "arm64", intel: "x86_64"

  version "0.2.1"
  sha256 arm:   "bc60598719b3c2219de7ca5d5d192d6ae7436f8c85bc72cb7044ed062908c251",
         intel: "3383f7cd28bf2c4643fa1fb8b80418a1695bc1b09f0b6a30b48db60d303a5be8"

  url "https://github.com/whit3rabbit/secrets-scanner/releases/download/v#{version}/secrets-scanner-#{version}-macos-#{arch}.zip"
  name "secrets-scanner"
  desc "High-performance secrets scanner using gitleaks-compatible rules"
  homepage "https://github.com/whit3rabbit/secrets-scanner"

  binary "secrets-scanner"
end
