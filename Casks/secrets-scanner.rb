cask "secrets-scanner" do
  arch arm: "arm64", intel: "x86_64"

  version "0.1.0"
  sha256 arm:   "27ae3385789c8ccfc9969b4a7d1197f5b903736cb9c4b11d61813bbc4e236461",
         intel: "4fb9b70539e2ad043b9f6d01e08f7c10fab39dd1beeaa2f3d5dfa71bedf64625"

  url "https://github.com/whit3rabbit/secrets-scanner/releases/download/v#{version}/secrets-scanner-#{version}-macos-#{arch}.zip"
  name "secrets-scanner"
  desc "High-performance secrets scanner using gitleaks-compatible rules"
  homepage "https://github.com/whit3rabbit/secrets-scanner"

  binary "secrets-scanner"
end
