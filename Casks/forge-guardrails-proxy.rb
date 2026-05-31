cask "forge-guardrails-proxy" do
  arch arm: "arm64", intel: "x86_64"

  version "0.1.0"
  sha256 arm:   "be7cac24f44bc5fb9211ce7c748c5586e28db8d5b14bc9a3f1a782cd5105d5c1",
         intel: "c34cb0639ff6de2bd7198e7ba71fd88bb4fe90e6ad2188bc7ed7baca9d5b479b"

  url "https://github.com/whit3rabbit/forge-guardrails/releases/download/v#{version}/forge-guardrails-proxy-#{version}-macos-#{arch}.zip"
  name "forge-guardrails-proxy"
  desc "OpenAI-compatible proxy with Forge tool-call guardrails"
  homepage "https://github.com/whit3rabbit/forge-guardrails"

  binary "forge-guardrails-proxy"
end
