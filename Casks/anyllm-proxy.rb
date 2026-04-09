cask "anyllm-proxy" do
  arch arm: "arm64", intel: "x86_64"

  version "0.9.0"
  sha256 arm:   "e3e94869274ea353e3fe7e43f7ae66c3c7cd169463e6e6d1700f0fb40a598067",
         intel: "68eec3b0a617fddac38c6ae124b8f1260630bbb6d07a5f7d07f4fccc19d5fa42"

  url "https://github.com/whit3rabbit/anyllm-proxy/releases/download/v#{version}/anyllm-proxy-#{version}-macos-#{arch}.tar.gz"
  name "anyllm-proxy"
  desc "HTTP proxy translating Anthropic Messages API and OpenAI Chat Completions to any backend"
  homepage "https://github.com/whit3rabbit/anyllm-proxy"

  binary "anyllm-proxy"
end
