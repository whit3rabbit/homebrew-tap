cask "anyllm-proxy" do
  arch arm: "arm64", intel: "x86_64"

  version "0.15.0"
  sha256 arm:   "6bfed07d4d9c033c82fac710295bb70c1d46dee0d2836529c540f32b2fe2f600",
         intel: "9f182b7e0d83cd9f78a3189e85415ceae5aa78da4555cf2ab06fcb6f639f9abc"

  url "https://github.com/whit3rabbit/anyllm-proxy/releases/download/v#{version}/anyllm-proxy-#{version}-macos-#{arch}.tar.gz"
  name "anyllm-proxy"
  desc "HTTP proxy translating Anthropic Messages API and OpenAI Chat Completions to any backend"
  homepage "https://github.com/whit3rabbit/anyllm-proxy"

  binary "anyllm-proxy"
end
