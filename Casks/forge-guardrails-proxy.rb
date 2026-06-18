cask "forge-guardrails-proxy" do
  arch arm: "arm64", intel: "x86_64"

  version "0.1.2"
  sha256 arm:   "fdb8279b48107a57f2951d4abb6a474c44c0028d88c5aa5ca93f667eff34952b",
         intel: "625751670f8e68b7a3006dfe9159e93766deb28fde348c6f54a7dbf89fd85842"

  url "https://github.com/whit3rabbit/forge-guardrails/releases/download/v#{version}/forge-guardrails-proxy-#{version}-macos-#{arch}.zip"
  name "forge-guardrails-proxy"
  desc "OpenAI-compatible proxy with Forge tool-call guardrails"
  homepage "https://github.com/whit3rabbit/forge-guardrails"

  binary "forge-guardrails-proxy"
end
