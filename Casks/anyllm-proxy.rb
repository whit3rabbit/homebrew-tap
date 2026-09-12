cask "anyllm-proxy" do
  arch arm: "arm64", intel: "x86_64"

  version "0.16.1"
  sha256 arm:   "a9833a0a45f45848e434b860d9f08436a95c9dde51efb58f27e9fb360a0a89a9",
         intel: "d5870ef0709642973f443f100ac0e336a43fa254deace39f92a9dcf00e551f13"

  url "https://github.com/whit3rabbit/anyllm-proxy/releases/download/v#{version}/anyllm-proxy-#{version}-macos-#{arch}.tar.gz"
  name "anyllm-proxy"
  desc "HTTP proxy translating Anthropic Messages API and OpenAI Chat Completions to any backend"
  homepage "https://github.com/whit3rabbit/anyllm-proxy"

  binary "anyllm-proxy"
end
