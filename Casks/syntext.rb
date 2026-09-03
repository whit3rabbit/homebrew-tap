cask "syntext" do
  arch arm: "arm64", intel: "x86_64"

  version "2.2.0"
  sha256 arm:   "2e4807fe672081823db7468dcad66e04ade56999b8ce34820c32023f196ab14d",
         intel: "5fadb9f44a83fc41af4a109cbb51b991f066ce483a9733c67be74e4570a48768"

  url "https://github.com/whit3rabbit/syntext/releases/download/v#{version}/st-#{version}-macos-#{arch}.zip"
  name "syntext"
  desc "Hybrid code search index for agent workflows"
  homepage "https://github.com/whit3rabbit/syntext"

  binary "st"
end
