cask "anyllm-proxy" do
  arch arm: "arm64", intel: "x86_64"

  version "0.17.0"
  sha256 arm:   "5047cc629cda56cfee9a0f91b7a3c73e260cd5576243cf6932607f13394a8f11",
         intel: "1b50cd305c529edeff99f693f2bc01a264783fc59428ff3c9dbc2227f8873c12"

  url "https://github.com/whit3rabbit/anyllm-proxy/releases/download/v#{version}/anyllm-proxy-#{version}-macos-#{arch}.tar.gz"
  name "anyllm-proxy"
  desc "HTTP proxy translating Anthropic Messages API and OpenAI Chat Completions to any backend"
  homepage "https://github.com/whit3rabbit/anyllm-proxy"

  binary "anyllm-proxy"
end
