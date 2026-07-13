cask "anyllm-proxy" do
  arch arm: "arm64", intel: "x86_64"

  version "0.14.1"
  sha256 arm:   "ed608a2d7a3c5806c43ef3b580ff8a1715b0d04eaadeded688008b33b55c2ff3",
         intel: "1c969871434d51d0b6f3495bcdc667e666ce4f00bb6a6799ea0c963674ea4cb5"

  url "https://github.com/whit3rabbit/anyllm-proxy/releases/download/v#{version}/anyllm-proxy-#{version}-macos-#{arch}.tar.gz"
  name "anyllm-proxy"
  desc "HTTP proxy translating Anthropic Messages API and OpenAI Chat Completions to any backend"
  homepage "https://github.com/whit3rabbit/anyllm-proxy"

  binary "anyllm-proxy"
end
