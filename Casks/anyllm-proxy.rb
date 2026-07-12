cask "anyllm-proxy" do
  arch arm: "arm64", intel: "x86_64"

  version "0.13.0"
  sha256 arm:   "eac9860ab4ba4c55834a1a4e8045e51bcc68a0590301e0feb680b20ee42bf0e0",
         intel: "6933397516f271d6d89a746a822fb1d47f1973485d26500fc788b96fb1e034de"

  url "https://github.com/whit3rabbit/anyllm-proxy/releases/download/v#{version}/anyllm-proxy-#{version}-macos-#{arch}.tar.gz"
  name "anyllm-proxy"
  desc "HTTP proxy translating Anthropic Messages API and OpenAI Chat Completions to any backend"
  homepage "https://github.com/whit3rabbit/anyllm-proxy"

  binary "anyllm-proxy"
end
