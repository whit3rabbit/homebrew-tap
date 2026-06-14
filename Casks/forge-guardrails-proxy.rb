cask "forge-guardrails-proxy" do
  arch arm: "arm64", intel: "x86_64"

  version "0.1.1"
  sha256 arm:   "c744d938f91084c4d36438ea7ebbfb61c07f97be417033685f94baef4aada6f7",
         intel: "8e6b675797e43bd4717919dc5fec533ade4a9844d1bf15d72d6fd76cb9384130"

  url "https://github.com/whit3rabbit/forge-guardrails/releases/download/v#{version}/forge-guardrails-proxy-#{version}-macos-#{arch}.zip"
  name "forge-guardrails-proxy"
  desc "OpenAI-compatible proxy with Forge tool-call guardrails"
  homepage "https://github.com/whit3rabbit/forge-guardrails"

  binary "forge-guardrails-proxy"
end
