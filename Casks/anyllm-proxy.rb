cask "anyllm-proxy" do
  arch arm: "arm64", intel: "x86_64"

  version "0.15.1"
  sha256 arm:   "240f829f70bdd6b80b6c3d509019629d696179bfbdafd601d5deb1d7a363e369",
         intel: "dc040fbc96cf81b5b0a14ad0e4eae839103dd2a9ad38ebda89a8282467d02c27"

  url "https://github.com/whit3rabbit/anyllm-proxy/releases/download/v#{version}/anyllm-proxy-#{version}-macos-#{arch}.tar.gz"
  name "anyllm-proxy"
  desc "HTTP proxy translating Anthropic Messages API and OpenAI Chat Completions to any backend"
  homepage "https://github.com/whit3rabbit/anyllm-proxy"

  binary "anyllm-proxy"
end
