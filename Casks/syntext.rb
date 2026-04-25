cask "syntext" do
  arch arm: "arm64", intel: "x86_64"

  version "1.1.0"
  sha256 arm:   "f81eb8cdfc6c637eca2c08712baa7f983a10a80e0d27a017e6d78a928d84801d",
         intel: "2724d24244a23d310d9159cba20778115222351368b50698907b7e79531f918c"

  url "https://github.com/whit3rabbit/syntext/releases/download/v#{version}/st-#{version}-macos-#{arch}.zip"
  name "syntext"
  desc "Hybrid code search index for agent workflows"
  homepage "https://github.com/whit3rabbit/syntext"

  binary "st"
end
