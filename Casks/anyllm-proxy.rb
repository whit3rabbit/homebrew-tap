cask "anyllm-proxy" do
  arch arm: "arm64", intel: "x86_64"

  version "0.16.0"
  sha256 arm:   "dde4a95398eb82c675aa4f7bc0fbf4efb9156b1aadffe1c6d340af59244b7251",
         intel: "62d740e13f919baeff0f1bfc5325fa66e4c918c230df27d197eb8b51c6e10931"

  url "https://github.com/whit3rabbit/anyllm-proxy/releases/download/v#{version}/anyllm-proxy-#{version}-macos-#{arch}.tar.gz"
  name "anyllm-proxy"
  desc "HTTP proxy translating Anthropic Messages API and OpenAI Chat Completions to any backend"
  homepage "https://github.com/whit3rabbit/anyllm-proxy"

  binary "anyllm-proxy"
end
