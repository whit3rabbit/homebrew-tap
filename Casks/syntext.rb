cask "syntext" do
  arch arm: "arm64", intel: "x86_64"

  version "2.7.2"
  sha256 arm:   "83815dae10a3c2b758ad6ec1cd999df1e03411a1052644c2ddcf6aa055df3fe9",
         intel: "59d5a425aa33c8a667e00ca821aecbceaa2848f6cf2a32984b27a5133887a125"

  url "https://github.com/whit3rabbit/syntext/releases/download/v#{version}/st-#{version}-macos-#{arch}.zip"
  name "syntext"
  desc "Hybrid code search index for agent workflows"
  homepage "https://github.com/whit3rabbit/syntext"

  binary "st"
end
