cask "syntext" do
  arch arm: "arm64", intel: "x86_64"

  version "1.1.1"
  sha256 arm:   "b5de0f6cb58144050ffe7ccd3a6b802b4320dbf09bc23167fc1d0e2be82faaee",
         intel: "96bcfb6f747df8d2a5cfe73ab233a730eb543287effc766bf9708e3f63a2af04"

  url "https://github.com/whit3rabbit/syntext/releases/download/v#{version}/st-#{version}-macos-#{arch}.zip"
  name "syntext"
  desc "Hybrid code search index for agent workflows"
  homepage "https://github.com/whit3rabbit/syntext"

  binary "st"
end
