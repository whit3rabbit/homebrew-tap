cask "anyllm-proxy" do
  arch arm: "arm64", intel: "x86_64"

  version "0.12.0"
  sha256 arm:   "1e29fd886ea20bc64447560c49f4146cb591b4006e2dfdb80b7f8aaac82a6857",
         intel: "fb969e4e8de23fc8050e328f405e4ff5ec571332bc8040f56d83a19c7a285c9b"

  url "https://github.com/whit3rabbit/anyllm-proxy/releases/download/v#{version}/anyllm-proxy-#{version}-macos-#{arch}.tar.gz"
  name "anyllm-proxy"
  desc "HTTP proxy translating Anthropic Messages API and OpenAI Chat Completions to any backend"
  homepage "https://github.com/whit3rabbit/anyllm-proxy"

  binary "anyllm-proxy"
end
