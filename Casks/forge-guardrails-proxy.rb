cask "forge-guardrails-proxy" do
  arch arm: "arm64", intel: "x86_64"

  version "0.1.3"
  sha256 arm:   "93bbc7d5638445fe6392cb09270cb02e4319080954711f3ed637253c0afdd542",
         intel: "621b736482340942d8fa340e3f1aad98e809df4d4c981530e3b0298496392e92"

  url "https://github.com/whit3rabbit/forge-guardrails/releases/download/v#{version}/forge-guardrails-proxy-#{version}-macos-#{arch}.zip"
  name "forge-guardrails-proxy"
  desc "OpenAI-compatible proxy with Forge tool-call guardrails"
  homepage "https://github.com/whit3rabbit/forge-guardrails"

  binary "forge-guardrails-proxy"
end
