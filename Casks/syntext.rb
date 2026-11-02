cask "syntext" do
  arch arm: "arm64", intel: "x86_64"

  version "2.8.0"
  sha256 arm:   "1f8dadecd0d122042a3f4a86426a91eec70bb344b1252e4c891432ab35ef58e2",
         intel: "7fd7420a5fd08e0f9e3270353c6e7b8580f71c5a3665e9c12b7b2b197bdfd2f2"

  url "https://github.com/whit3rabbit/syntext/releases/download/v#{version}/st-#{version}-macos-#{arch}.zip"
  name "syntext"
  desc "Hybrid code search index for agent workflows"
  homepage "https://github.com/whit3rabbit/syntext"

  binary "st"
end
