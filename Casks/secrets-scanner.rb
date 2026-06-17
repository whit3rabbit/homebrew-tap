cask "secrets-scanner" do
  arch arm: "arm64", intel: "x86_64"

  version "0.2.2"
  sha256 arm:   "ec937f5b96c273b5544be5e724ea36cc3860a456ee28e7f44b74f2228b956bf9",
         intel: "31dc00fa3a06de7ed57fb3f08cdf002b97968f643e98959358413e1a8d242777"

  url "https://github.com/whit3rabbit/secrets-scanner/releases/download/v#{version}/secrets-scanner-#{version}-macos-#{arch}.zip"
  name "secrets-scanner"
  desc "High-performance secrets scanner using gitleaks-compatible rules"
  homepage "https://github.com/whit3rabbit/secrets-scanner"

  binary "secrets-scanner"
end
