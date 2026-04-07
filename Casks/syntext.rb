cask "syntext" do
  arch arm: "arm64", intel: "x86_64"

  version "1.0.3"
  sha256 arm:   "da976e1e6fdcf8c7ec273bf55c8a06aab8836355c584d3df6273fbcc140c0356",
         intel: "8c50417c83b1e3d3519b6c3a44798c90d37534ce8bbc94e0bbeed0a57a680b35"

  url "https://github.com/whit3rabbit/syntext/releases/download/v#{version}/st-#{version}-macos-#{arch}.zip"
  name "syntext"
  desc "Hybrid code search index for agent workflows"
  homepage "https://github.com/whit3rabbit/syntext"

  binary "st"
end
